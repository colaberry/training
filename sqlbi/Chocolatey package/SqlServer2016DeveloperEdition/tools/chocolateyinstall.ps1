$ErrorActionPreference = 'Stop';

$url        = ''
$url64      = 'http://download.microsoft.com/download/4/4/F/44F2C687-BD92-4331-9D4F-882A5AB0D301/SQLServer2016-SSEI-Dev.exe'
$checksum   = '20da6a28fd5528ed46ee00c89adf97b9e1cc842a'
 
$tempDir = Join-Path (Get-Item $env:TEMP).FullName "$packageName"
if ($env:packageVersion -ne $null) {$tempDir = Join-Path $tempDir "$env:packageVersion"; }



if (![System.IO.Directory]::Exists($tempDir)) { [System.IO.Directory]::CreateDirectory($tempDir) | Out-Null }
$fileFullPath = "$tempDir\SQLServer2016-SSEI-Dev.exe"

$scriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
$cofigFile = Join-Path $scriptDir "ConfigurationFile.ini"
(Get-Content $cofigFile).replace('USERNAMETBR', "$env:computername\$env:username") | Set-Content $scriptDir\ConfigurationFile_Local.ini

$configFinal = Join-Path $scriptDir "ConfigurationFile_Local.ini"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $fileFullPath -Url $url -Url64bit $url64 -Checksum $checksum -ChecksumType '1'
 
$packageArgs = @{
  packageName   = 'sql-server-developer-edition'
  fileType      = 'exe'
  softwareName  = 'sql-server-developer-edition*'
  file    = $fileFullPath
  silentArgs    = "/ConfigurationFile=`"$configFinal`" /MediaPath=`"$tempDir`"","/Q","/IAcceptSqlServerLicenseTerms", "/ENU"
  validExitCodes= @(0, 3010, 1641)
}
 
Install-ChocolateyInstallPackage @packageArgs
