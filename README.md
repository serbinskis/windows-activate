## Installation

Run the command line as administrator and execute the code below to install an automatic activator for Windows 10/11.

```sh
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/serbinskis/windows-activate/master/Installer.bat' -OutFile \"$env:TEMP\Installer.bat\""
cmd.exe /c "%TEMP%\Installer.bat" & del "%TEMP%\Installer.bat"
```

## Activation

Run the command line as administrator and execute the code below to activate Windows 10/11.

```sh
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/serbinskis/windows-activate/master/WindowsActivate.bat' -OutFile \"$env:TEMP\WindowsActivate.bat\""
cmd.exe /c "%TEMP%\WindowsActivate.bat" & del "%TEMP%\WindowsActivate.bat"
```
