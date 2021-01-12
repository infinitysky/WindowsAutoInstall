﻿@echo off


:CUSTOMIZATIONS
REM Copy unattend config file
if not exist %windir%\system32\oobe\info mkdir %windir%\system32\oobe\info 
if not exist %windir%\system32\oobe\info\ZiiTECHLogo.bmp copy %systemroot%\setup\scripts\ZiiTECHLogo.bmp %windir%\system32\oobe\info\ZiiTECHLogo.bmp

REM set up the firewall inbound rules and onbound rules
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes
netsh advfirewall set currentprofile state on

REM set up the power and display to never sleep

REM powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61

REM powercfg /s c4e706ea-2b76-4770-8613-04a3e10d6792

REM Ultimate
powercfg /S e9a42b02-d5df-448d-aa00-03f14749eb61
REM High proformance
powercfg /S 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c


powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 0
powercfg /change monitor-timeout-ac 0
powercfg /change monitor-timeout-dc 0
powercfg /change hibernate-timeout-ac 0
powercfg /change hibernate-timeout-dc 0

REM set up the time zone
tzutil /s "AUS Eastern Standard Time"

REM set up the system locale
powershell get-winsystemlocale


:CLEANUP
del /F /Q %systemroot%\setup\scripts\oobe.cmd