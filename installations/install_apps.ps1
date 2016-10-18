#
# Copyright (c) 2016, Colaberry Inc.  All rights reserved.
# Copyrights licensed under the New BSD License.
# See the accompanying LICENSE file for terms.
#

#
# Before running the script, set the execution policy
# Set-ExecutionPolicy RemoteSigned
#

#Helper Functions
function Create-Folder {
    Param ([string]$path)
    if ((Test-Path $path) -eq $false) 
    {
        Write-Host "$path doesn't exist. Creating now.."
        New-Item -ItemType "directory" -Path $path
    }
}

function Download-File{
    Param ([string]$src, [string] $dst)

    (New-Object System.Net.WebClient).DownloadFile($src,$dst)
    #Invoke-WebRequest $src -OutFile $dst
}

function WaitForFile($File) {
  while(!(Test-Path $File)) {    
    Start-Sleep -s 10;   
  }  
} 


#Setup Folders

$setupFolder = "c:\colaberry"
Create-Folder "$setupFolder"

Create-Folder "$setupFolder\training"
$setupFolder = "$setupFolder\training"

Create-Folder "$setupFolder\installations"
Create-Folder "$setupFolder\datasets"


Create-Folder "$setupFolder\installations\tableau"
Create-Folder "$setupFolder\installations\mysql"
Create-Folder "$setupFolder\installations\python"
Create-Folder "$setupFolder\installations\utils"


$os_type = (Get-WmiObject -Class Win32_ComputerSystem).SystemType -match ‘(x64)’


#Tableau Installation here
if((Test-Path "$setupFolder\installations\tableau\tableau.exe") -eq $false)
{
    Write-Host "Downloading Tableau installation file.."
    if ($os_type -eq "True"){
        Download-File "https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-10-0-2.exe" "$setupFolder\installations\tableau\tableau.exe"
    }else {
        Download-File "https://downloads.tableau.com/tssoftware/TableauDesktop-32bit-10-0-2.exe" "$setupFolder\installations\tableau\tableau.exe"
    }    
}

Write-Host "Installing Tableau.."
Start-Process -FilePath "$setupFolder\installations\tableau\tableau.exe" -ArgumentList '/quiet', 'ACCEPTEULA="1"' -Wait

#mySQL Installer
if((Test-Path "$setupFolder\installations\mysql\mysql.msi") -eq $false)
{
    Write-Host "Downloading MySQL installation file.."
    if ($os_type -eq "True"){
        Download-File "http://dev.mysql.com/get/Downloads/MySQLInstaller/mysql-installer-community-5.7.16.0.msi"  "$setupFolder\installations\mysql\mysql.msi"    
    }else {
        Download-File "http://dev.mysql.com/get/Downloads/MySQLInstaller/mysql-installer-community-5.7.16.0.msi"  "$setupFolder\installations\mysql\mysql.msi"        
    }    
}

Write-Host "Installing MySQL.."
msiexec /i "$setupFolder\installations\mysql\mysql.msi" /quiet

WaitForFile('C:\Program Files (x86)\MySQL\MySQL Installer for Windows\MySQLInstallerConsole.exe')

$currentPath = (Get-Item -Path ".\" -Verbose).FullName
cd "C:\Program Files (x86)\MySQL\MySQL Installer for Windows"

if ($os_type -eq "True")
{
    Start-Process -FilePath 'C:\Program Files (x86)\MySQL\MySQL Installer for Windows\MySQLInstallerConsole.exe' -ArgumentList 'community install server;5.7.16;x64:*:type=config;openfirewall=true;generallog=true;binlog=true;serverid=3306;enable_tcpip=true;port=3306;rootpasswd=passw0rd -silent' -Wait
    Start-Process -FilePath 'C:\Program Files (x86)\MySQL\MySQL Installer for Windows\MySQLInstallerConsole.exe' -ArgumentList 'community install workbench;6.3.7;x64 -silent' -Wait
}else 
{
    Start-Process -FilePath 'C:\Program Files (x86)\MySQL\MySQL Installer for Windows\MySQLInstallerConsole.exe' -ArgumentList 'community install server;5.7.16;x86:*:type=config;openfirewall=true;generallog=true;binlog=true;serverid=3306;enable_tcpip=true;port=3306;rootpasswd=passw0rd -silent' -Wait
    Start-Process -FilePath 'C:\Program Files (x86)\MySQL\MySQL Installer for Windows\MySQLInstallerConsole.exe' -ArgumentList 'community install workbench;6.3.7;x86 -silent' -Wait
}

Start-Process -FilePath 'C:\Program Files (x86)\MySQL\MySQL Installer for Windows\MySQLInstallerConsole.exe' -ArgumentList 'community install notifier;1.1.7 -silent' -Wait

#Python
if((Test-Path "$setupFolder\installations\python\python.msi") -eq $false)
{
    Write-Host "Downloading Python installation file.."
    if ($os_type -eq "True"){
        Download-File "https://www.python.org/ftp/python/2.7.12/python-2.7.12.amd64.msi" "$setupFolder\installations\python\python.msi" 
    }else 
    {
        Download-File "https://www.python.org/ftp/python/2.7.12/python-2.7.12.msi" "$setupFolder\installations\python\python.msi" 
    }    
}

Write-Host "Installing Python.."
msiexec /i "$setupFolder\installations\python\python.msi" /qn ADDLOCAL=ALL

#Util

#atom
if((Test-Path "$setupFolder\installations\utils\AtomSetup.exe") -eq $false)
{
    Write-Host "Downloading Atom installation file.."
    Download-File "https://atom-installer.github.com/v1.11.2/AtomSetup.exe" "$setupFolder\installations\utils\AtomSetup.exe"
}

Write-Host "Installing Atom.."
Start-Process -FilePath "$setupFolder\installations\utils\AtomSetup.exe" -ArgumentList '--silent' -Wait

#github for windows
if((Test-Path "$setupFolder\installations\utils\GitHubSetup.exe") -eq $false)
{
    Write-Host "Downloading Github for Windows installation file.."
    Download-File "https://github-windows.s3.amazonaws.com/GitHubSetup.exe" "$setupFolder\installations\utils\GitHubSetup.exe"
}

# Github doesn't support silent install, as it is distributed via .NET Click Once deployment option
# User interaction needed to continue the setup.
Write-Host "Installing Github.."
Start-Process -FilePath "$setupFolder\installations\utils\GitHubSetup.exe" -Wait

if((Test-Path "C:\Program Files\MySQL\MySQL Server 5.7") -eq $false)
{
    Write-Host "MySQL Sever isn't installed yet."
}

cd $currentPath

# Manual Steps
# 1. Makesure Github for Windows is installed
# 2. If for any reason, the MySQL Server didn't get installed, run the same command from PowerShell ISE or command prompt 
