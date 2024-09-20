## Installation

Run command line as administrator and execute code below to activate Windows.

```sh
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/serbinskis/windows-activate/master/Installer.bat' -OutFile \"$env:TEMP\Installer.bat\""
cmd.exe /c "%TEMP%\Installer.bat"
powershell -Command "Remove-Item \"$env:TEMP\Installer.bat\""
```
