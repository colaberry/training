 $exec=Get-ExecutionPolicy
 If($exec -eq 'Restricted'){
 Set-ExecutionPolicy AllSigned
 Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
 }else{
 Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
 }
 
 choco install sql-server-2016-developer-edition --version 13.1801.3958.1 -y
 
 choco install sql-server-management-studio --version 14.0.17224.0 -y
 
 choco install ssdt15 [other options] --params="'/analysis /integration /reporting /'" -y
