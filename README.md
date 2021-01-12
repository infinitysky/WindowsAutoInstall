# WindowsAutoInstall
For Windows 10 TLSC auto complete the OOBE and account setup for ZiiPOS

## How to use these script?
### Copy the following files and folder in to the root of windows installation media

* autounattend.xml
* install.cmd
* sources

## What this scripts are going to do?
* skip OOBE setting
* skip user account setting
* add account  `Ziitech` with password  
* auto logon to account `Ziitech`
* switch the power plan to `high preference`
* switch to `never` sleep & `never` shut screen
* swtich the time zone to `AUS Eastern Standard Time`
* password `never` expire
* `enable` firewall for File and Printer Sharing
*  `disable` Remote Desktop "require computer to use Network Level Authentication"
* add OEM and business for `ZiiTech`
