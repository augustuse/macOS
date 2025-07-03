#!/bin/bash
# ----------------------------------------------------------------------------------------
# This will remove unused plist files
# Last Modified: 2025-06-23

for plistFile in /Library/*/*
do
    case $plistFile in
        */Library/LaunchDaemons/com.sgsco.UserAccountCleanup.plist)
            rm -rf "$plistFile"
            echo [-] $plistFile removed!
            ;;
        */Library/LaunchAgents/com.sgsco.u_idlecheckerv4.plist)
            rm -rf "$plistFile"
            echo [-] $plistFile removed!
            ;;
        */Library/LaunchAgents/com.sgsco.createloginrecord.plist)
            rm -rf "$plistFile"
            echo [-] $plistFile removed!
            ;;
        */Library/LaunchAgents/com.sgsco.idlechecker.keypress.plist)
            rm -rf "$plistFile"
            echo [-] $plistFile removed!
            ;;
        */Library/LaunchAgents/com.sgsco.loginrecord.plist)
            rm -rf "$plistFile"
            echo [-] $plistFile removed!
            ;;
        */Library/LaunchDaemons/com.sgsco.autocleaner.plist)
            rm -rf "$plistFile"
            echo [-] $plistFile removed!
            ;;
    esac
done

echo
echo '-----------------------------------------------------------'
echo 'Unused plist file was removed, please reboot your computer!'

