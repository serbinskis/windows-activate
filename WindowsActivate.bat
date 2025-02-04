@echo off
cls & set i=1
echo Windows activation...

cscript //nologo %SystemRoot%\system32\slmgr.vbs /dli | find /i "License Status: Licensed" > nul
if %errorlevel% EQU 0 goto supported

:server
if %i%==1 set KMS=kms.chinancce.com
if %i%==2 set KMS=kms7.MSGuides.com
if %i%==3 set KMS=kms8.MSGuides.com
if %i%==4 set KMS=kms9.MSGuides.com
if %i%==5 goto notsupported

echo Trying to activate Windows using KMS: %KMS% ...
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9 > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk 2F77B-TNFGY-69QQF-B8YKP-D69TJ > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk QFFDN-GRT3P-VKWWX-X7T3R-8B639 > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk 268M8-F3NV2-46WHD-BD2R6-V6DDR > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9 > nul
cscript //nologo %SystemRoot%\system32\slmgr.vbs /skms %KMS%:1688 > nul 
cscript //nologo %SystemRoot%\system32\slmgr.vbs /ato | find /i "successfully"

if %errorlevel% EQU 0 goto supported
set /a i+=1
goto server

:supported
echo Congrats! Windows was successfully activated.
timeout /t 5 /nobreak
exit

:notsupported
echo Sorry! Your version is not supported.
timeout /t 5 /nobreak
exit
