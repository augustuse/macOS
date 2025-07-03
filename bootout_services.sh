#!/bin/bash
# Modiefied: 2025-05-30

#--------------------------------------------------------------------------------
# Copy and paste the name of the Service and the
# run the Script.
#--------------------------------------------------------------------------------

ifRunning=$(launchctl list | grep com.sgsco.idlechecker.plist | awk '{print $3}')
if [ "$ifRunning" = "com.sgsco.idlechecker.plist" ]; then
    echo "[-] com.sgsco.idlechecker.plist is running!"
    launchctl bootout system/com.sgsco.idlechecker.plist
    echo "[-] com.sgsco.idlechecker.plist was forcely stopped!"
else
    echo "[x] com.sgsco.idlechecker.plist is not running!"
fi

echo
echo 'Loaded SGSco plist'
echo '--------------------------------------------------------------------------'
launchctl list | grep com.sgsco*
echo