@echo off
setlocal enabledelayedexpansion

:menu
cls
echo DNS Manager
echo 1. Set or Change DNS From List
echo 2. New DNS and Set
echo 3. Edit or Delete a DNS from list
echo 4. Set to Default
echo 5. List DNS Entries
echo 6. Check Current DNS
echo 7. Exit
set /p choice=Enter your choice: 

if "%choice%"=="1" goto setDNS
if "%choice%"=="2" goto newDNS
if "%choice%"=="3" goto editDNS
if "%choice%"=="4" goto defaultDNS
if "%choice%"=="5" goto listDNS
if "%choice%"=="6" goto getDNS
if "%choice%"=="7" exit
goto menu

:setDNS
cls
echo Available DNS servers:
call :drawTable "dns_list.txt"
set /p dns_choice=Enter the number of DNS to set: 
set dns_line=
for /f "skip=%dns_choice% tokens=*" %%a in (dns_list.txt) do (
    set dns_line=%%a
    goto :setDNSContinue
)
:setDNSContinue
for /f "tokens=1,2,3,4 delims=," %%a in ("!dns_line!") do (
    powershell -Command "Set-DnsClientServerAddress -InterfaceAlias (Get-NetAdapter | Where-Object {$_.Status -eq 'Up'}).Name -ServerAddresses ('%%b','%%c')"
    if "%%d"=="yes" (
        call :validateSettings
    )
)
echo DNS set successfully.
pause
goto menu

:newDNS
cls
set /p dns_name=Enter DNS name: 
set /p primary_dns=Enter primary DNS: 
set /p secondary_dns=Enter secondary DNS: 
set /p validate_settings=Should validate settings apply? (yes/no): 
echo.>>dns_list.txt
echo %dns_name%,%primary_dns%,%secondary_dns%,%validate_settings%>>dns_list.txt
powershell -Command "Set-DnsClientServerAddress -InterfaceAlias (Get-NetAdapter | Where-Object {$_.Status -eq 'Up'}).Name -ServerAddresses ('%primary_dns%','%secondary_dns%')"
if "%validate_settings%"=="yes" (
    call :validateSettings
)
echo New DNS added and set successfully.
pause
goto menu

:editDNS
cls
echo Available DNS servers:
call :drawTable "dns_list.txt"
set /p dns_choice=Enter the number of DNS to edit/delete: 
set /p action=Enter 'e' to edit or 'd' to delete: 
if "%action%"=="e" goto editDNSEntry
if "%action%"=="d" goto deleteDNSEntry
goto menu

:editDNSEntry
set /p new_dns_name=Enter new DNS name: 
set /p new_primary=Enter new primary DNS: 
set /p new_secondary=Enter new secondary DNS: 
set /p validate_settings=Should validate settings apply? (yes/no): 
set count=0

(for /f "tokens=* delims=" %%a in (dns_list.txt) do (
    set /a count+=1
    if !count!==%dns_choice% (
        echo.
        echo %new_dns_name%,%new_primary%,%new_secondary%,%validate_settings%
    ) else (
        echo %%a
    )
))>temp.txt

move /y temp.txt dns_list.txt

if "%validate_settings%"=="yes" (
    call :validateSettings
)

echo DNS entry edited successfully.
pause
goto menu

:deleteDNSEntry
set count=0

(for /f "tokens=* delims=" %%a in (dns_list.txt) do (
    set /a count+=1
    if !count! neq %dns_choice% echo %%a
))>temp.txt

move /y temp.txt dns_list.txt
echo DNS entry deleted successfully.
pause
goto menu

:defaultDNS
powershell -Command "Set-DnsClientServerAddress -InterfaceAlias (Get-NetAdapter | Where-Object {$_.Status -eq 'Up'}).Name -ResetServerAddresses"
echo DNS set to default.
pause
goto menu

:validateSettings
cls
echo Validating current DNS settings:
powershell -Command "(Get-DnsClientServerAddress -InterfaceAlias (Get-NetAdapter | Where-Object {$_.Status -eq 'Up'}).Name) | Format-Table -AutoSize"
pause
goto menu

:listDNS
cls
echo DNS Entries:
call :drawTable "dns_list.txt"
pause
goto menu

:getDNS
cls
echo Checking current DNS settings...
call :getCurrentDNS
pause
goto menu

:getDNS
cls
echo Checking current DNS settings...
call :getCurrentDNS
pause
goto menu

:getCurrentDNS
setlocal enabledelayedexpansion

rem Use PowerShell to get current DNS servers.
for /f "tokens=* delims=" %%a in ( 'powershell -Command "(Get-DnsClientServerAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -eq (Get-NetAdapter | Where-Object { $_.Status -eq 'Up' }).Name } | Select-Object -ExpandProperty ServerAddresses)"') do (
    if not defined primary_dns (
        set "primary_dns=%%a"
    ) else if not defined secondary_dns (
        set "secondary_dns=%%a"
        goto :breakloop
    )
)
:breakloop

rem If secondary_dns is not set, set it to N/A
if not defined secondary_dns set "secondary_dns=N/A"

rem Create a temporary file to store DNS information.
echo System DNS,!primary_dns!,!secondary_dns!,Yes > temp_dns_info.txt

rem Display the DNS information in table format.
call :drawTable "temp_dns_info.txt"

rem Clean up the temporary file.
del temp_dns_info.txt

endlocal & exit /b 0


:drawTable
rem $1 = file path.
setlocal enabledelayedexpansion

rem Check if file exists.
if not exist "%~1" (
    echo File not found: %~1
    exit /b 1
)

rem Print header with fixed width for each column.
echo Index     Name                Primary DNS      Secondary DNS      Validate
echo -------------------------------------------------------------------------

rem Initialize index.
set index=1

rem Read file and print content.
for /f "usebackq tokens=1,2,3,4 delims=," %%a in ("%~1") do (
    if not "%%a"=="" (
        set name=%%a        
        set primary_dns=%%b        
        set secondary_dns=%%c        
        set validate=%%d
        
        rem Truncate values to fixed widths for alignment.
        if defined name set name=!name:~0,20!
        if defined primary_dns set primary_dns=!primary_dns:~0,15!
        if defined secondary_dns set secondary_dns=!secondary_dns:~0,15!
        if defined validate set validate=!validate:~0,5!

        rem Pad values with spaces to ensure fixed width.
        set name=!name!          rem Pad to 20 characters
        set primary_dns=!primary_dns!      rem Pad to 15 characters
        set secondary_dns=!secondary_dns!      rem Pad to 15 characters
        set validate=!validate!      rem Pad to 5 characters

        rem Print each line with proper spacing using fixed-width formatting.
        echo !index!     !name:~0,20!   !primary_dns:~0,15!   !secondary_dns:~0,15!   !validate:~0,5!

        rem Increment index.
        set /a index+=1       
    )
)

endlocal & exit /b 0
