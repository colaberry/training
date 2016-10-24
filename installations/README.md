# Applications
The following applications are needed for the program. Some programs like Atom are not mandatory, 
you may use a similar IDE of your preference.

## Installing on Windows
To download and install all applications needed on Windows, you may use the attached Powershell script. 
When executed, the powershell script will detect and automatically download binaries required based on 32/64 bit machine architectures.
The script will also install all applications except Github for Windows and we also need to manually configure the MySQL Installation.
* Download the install_apps.ps1 to a local folder
* Search for "Windows PowerShell ISE" and right click and choose "Run as administrator". 
* Click File and then Open and choose the install_apps.ps1 from the local folder
* The file will be normally opened in the top pane and display a blue pane at the bottom that shows the output of the script when run. 
You can also arbitrarily run other commands from the shell.
* Click on the blue pane and enter "Set-ExecutionPolicy RemoteSigned" and click on "yes" when prompted
* Now you can click on green forward button in the toolbar to run the script. Or just simply press "F5". You will see the log in the blue pane 
as the script executes. 

## Installing on Mac
