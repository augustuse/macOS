#!/bin/bash
# ----------------------------------------------------------------------------------------
# This will check the Finder views
# Modified: 2025-06-27

# Nlsv - List view
# clmv - Column View
# Flwv - Cover Flow View
# icnv - Icon View 

# close all finder windows
#osascript -e 'tell application "Finder" to close every window'

# set finder view to List View
#defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"; killall Finder 

# check window default window views
setViews=$(defaults read com.apple.Finder FXPreferredViewStyle)

if [ "Nlsv" == "$setViews" ]; then
    echo "[+] Finder is using List View!"
elif [ "clmv" == "$setViews" ]; then
    echo "[+] Finder is using Column View!"
    #defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"; killall Finder
    #osascript -e 'tell application "Finder" to close every window'
    #echo "[+] Setting Finder to List View!"
elif [ "Flwv" == "$setViews" ]; then
    echo "[+] Finder is using Cover Flow View!"
    #defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"; killall Finder
    #osascript -e 'tell application "Finder" to close every window'
    #echo "[+] Setting Finder to List View!"
elif [ "icnv" == "$setViews" ]; then
    echo "[+] Finder is using Icon View!"
    #defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"; killall Finder
    #osascript -e 'tell application "Finder" to close every window'
    #echo "[+] Setting Finder to List View!"
else
    echo "[x] Viewing is not recognized!"
fi
echo '---------------------------------------'
echo 'Command successfully completed!'
echo
