# Applications
The following applications are needed for the training program.

* SQL Server 2016 (Developer Edition)
* SQL Server Management Studio (SSMS)
* SQL Server Data Tools
* Adventureworks Database Sample

## Installing on Windows
To download and install all applications needed on Windows, you may use the attached Powershell script.
The script will also create the following folder structure to organize all installation files and datasets:  
* **c:\colaberry\training\sqlbi\**
* **c:\colaberry\training\sqlbi\installations**
* **c:\colaberry\training\sqlbi\datasets**

***
Note that SQL Server 2016 Server is not compatible with **32 bit machines**, though most of the client tools can be installed on a 32 bit machine. MUST require **64 bit machines** for the Server.
***

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

### Restart may be required
It may require a restart once SQL Server is installed. When prompted, restart the computer and re-run the script.

## Installing on Mac
SQL Server 2016 installation is NOT supported on Mac. You may install Windows on Mac using Parallels Desktop or VMWare Fusion or similar application first and then use the script to install all applications.
