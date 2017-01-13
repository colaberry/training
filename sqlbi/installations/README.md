# Applications
The following applications are needed for the training program.

* SQL Server 2016
* SQL Server Management Studio (SSMS)
* SQL Server Data Tools
* Adventureworks Database Sample

## Installing on Windows
To download and install all applications needed on Windows, you may use the attached Powershell script.
The script will also create the following folder structure to organize all installation files:  **c:\colaberry\training\sqlbi\**

### Downloading and installing all applications

* Download the install_apps.ps1 to a local folder
* Search for "Windows PowerShell ISE" and right click and choose "Run as administrator".
* Click File and then Open and choose the install_apps.ps1 from the local folder
* The file will be normally opened in the top pane and display a blue pane at the bottom
that shows the output of the script when run.
You can also arbitrarily run other commands from the shell.
* Click on the blue pane and enter "Set-ExecutionPolicy RemoteSigned" and click on "yes" when prompted
* Now you can click on green forward (Play) button in the toolbar to run the script. Or just simply press "F5".
You will see the log in the blue pane as the script executes.


## Installing on Mac
SQL Server 2016 installation is NOT supported on Mac. You may install Windows on Mac using Parallels Desktop or VMWare Fusion or similar application.
