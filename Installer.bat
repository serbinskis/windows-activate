@echo off

echo @echo off > "%SystemRoot%\WindowsActivate.bat"
echo powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/serbinskis/windows-activate/master/WindowsActivate.bat' -OutFile \"$env:TEMP\WindowsActivate.bat\"" >> "%SystemRoot%\WindowsActivate.bat"
echo cmd.exe /c "%TEMP%\WindowsActivate.bat" >> "%SystemRoot%\WindowsActivate.bat"
echo powershell -Command "Remove-Item \"$env:TEMP\WindowsActivate.bat\"" >> "%SystemRoot%\WindowsActivate.bat"

echo ^<?xml version="1.0" encoding="UTF-16"?^> > "%TEMP%\WindowsActivate.xml"
echo ^<Task version="1.4" xmlns="http://schemas.microsoft.com/windows/2004/02/mit/task"^> >> "%TEMP%\WindowsActivate.xml"
echo   ^<RegistrationInfo^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<Date^>1980-01-01T12:00:00^</Date^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<Author^>SYSTEM^</Author^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<URI^>\Windows Activate^</URI^> >> "%TEMP%\WindowsActivate.xml"
echo   ^</RegistrationInfo^> >> "%TEMP%\WindowsActivate.xml"
echo   ^<Triggers^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<CalendarTrigger^> >> "%TEMP%\WindowsActivate.xml"
echo       ^<StartBoundary^>1980-01-01T12:00:00^</StartBoundary^> >> "%TEMP%\WindowsActivate.xml"
echo       ^<Enabled^>true^</Enabled^> >> "%TEMP%\WindowsActivate.xml"
echo       ^<ScheduleByDay^> >> "%TEMP%\WindowsActivate.xml"
echo         ^<DaysInterval^>1^</DaysInterval^> >> "%TEMP%\WindowsActivate.xml"
echo       ^</ScheduleByDay^> >> "%TEMP%\WindowsActivate.xml"
echo     ^</CalendarTrigger^> >> "%TEMP%\WindowsActivate.xml"
echo   ^</Triggers^> >> "%TEMP%\WindowsActivate.xml"
echo   ^<Principals^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<Principal id="Author"^> >> "%TEMP%\WindowsActivate.xml"
echo       ^<UserId^>S-1-5-18^</UserId^> >> "%TEMP%\WindowsActivate.xml"
echo       ^<RunLevel^>HighestAvailable^</RunLevel^> >> "%TEMP%\WindowsActivate.xml"
echo     ^</Principal^> >> "%TEMP%\WindowsActivate.xml"
echo   ^</Principals^> >> "%TEMP%\WindowsActivate.xml"
echo   ^<Settings^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<MultipleInstancesPolicy^>IgnoreNew^</MultipleInstancesPolicy^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<DisallowStartIfOnBatteries^>false^</DisallowStartIfOnBatteries^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<StopIfGoingOnBatteries^>false^</StopIfGoingOnBatteries^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<AllowHardTerminate^>true^</AllowHardTerminate^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<StartWhenAvailable^>true^</StartWhenAvailable^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<RunOnlyIfNetworkAvailable^>false^</RunOnlyIfNetworkAvailable^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<IdleSettings^> >> "%TEMP%\WindowsActivate.xml"
echo       ^<StopOnIdleEnd^>true^</StopOnIdleEnd^> >> "%TEMP%\WindowsActivate.xml"
echo       ^<RestartOnIdle^>false^</RestartOnIdle^> >> "%TEMP%\WindowsActivate.xml"
echo     ^</IdleSettings^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<AllowStartOnDemand^>true^</AllowStartOnDemand^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<Enabled^>true^</Enabled^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<Hidden^>true^</Hidden^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<RunOnlyIfIdle^>false^</RunOnlyIfIdle^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<DisallowStartOnRemoteAppSession^>false^</DisallowStartOnRemoteAppSession^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<UseUnifiedSchedulingEngine^>true^</UseUnifiedSchedulingEngine^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<WakeToRun^>false^</WakeToRun^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<ExecutionTimeLimit^>PT72H^</ExecutionTimeLimit^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<Priority^>7^</Priority^> >> "%TEMP%\WindowsActivate.xml"
echo   ^</Settings^> >> "%TEMP%\WindowsActivate.xml"
echo   ^<Actions Context="Author"^> >> "%TEMP%\WindowsActivate.xml"
echo     ^<Exec^> >> "%TEMP%\WindowsActivate.xml"
echo       ^<Command^>%SystemRoot%\WindowsActivate.bat^</Command^> >> "%TEMP%\WindowsActivate.xml"
echo     ^</Exec^> >> "%TEMP%\WindowsActivate.xml"
echo   ^</Actions^> >> "%TEMP%\WindowsActivate.xml"
echo ^</Task^> >> "%TEMP%\WindowsActivate.xml"

schtasks /create /xml "%TEMP%\WindowsActivate.xml" /tn "Windows Activate" /f
del "%TEMP%\WindowsActivate.xml"
call "%SystemRoot%\WindowsActivate.bat"
