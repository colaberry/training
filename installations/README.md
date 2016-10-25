# Applications
The following applications are needed for the program. Some applications like Atom are not mandatory, 
you may use a similar IDE of your preference.
* Tableau 10.0
* MySQL Server
* MySQL Workbench
* Python
* Atom
* Github

## Installing on Windows
To download and install all applications needed on Windows, you may use the attached Powershell script. 
When executed, the powershell script will detect and automatically download binaries required based 
on 32/64 bit machine architectures.
The script will also install all applications except Github for Windows and we also need to manually 
configure the MySQL Installation.

The script will also create the following folder structure to organize all installation files:  **c:\colaberry\training\installations**

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
* Once the script is complete, goto c:\colaberry\training\installations\mysql and run the MSI file. 
Once launched, click on 'Reconfigure' link and follow the instructions on the screen. 
Just use all defaults in all screens except for the password. Use a password for the admin role 
for the MySQL Server of your choice.
* Then goto c:/colaberry/training/installations/util and launch the Github MSI file and 
follow instructions on the screen. This will install Github for Windows


## Installing on Mac
Currently we do not have a script that automatically download and install for Mac. 
Click on respective product pages and download the application for Mac and follow 
instructions on respective product pages.
