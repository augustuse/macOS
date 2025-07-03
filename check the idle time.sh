#!/bin/bash
# This script will check the idle time of the computer
#

# get the idle time
idl=$"`ioreg -c IOHIDSystem | awk '/HIDIdleTime/ {print int($NF/1000000000); exit}'`"

# conversion from seconds to minutes
minutes=$(($idl / 60))
remaining_seconds=$(($idl % 60))
echo "Your computer is idle for $minutes minutes and $remaining_seconds seconds"

# conversion into Hours, Minutes, and Seconds
printf 'Your computer is idle for %dh:%dm:%ds\n' $(($idl/3600)) $(($idl%3600/60)) $(($idl%60))

# conversion into Days, Hours, Minutes, and Seconds
printf 'Your computer is idle for %dd:%dh:%dm:%ds\n' $(($idl/86400)) $(($idl%86400/3600)) $(($idl%3600/60)) $(($idl%60))

echo "-----"

##### check idle in seconds
#+--------------+---------------+
#| in Minutes   |   in Seconds  |
#+--------------+---------------+
#|  10          |   600         |
#|  30          |   1800        | 
#|  60          |   3600        |
#|  90          |   5400        |
#+--------------+---------------+
idletime_secs="600" #<-- set to 10 minutes
if [ $idl -gt $idletime_secs ]; then
    echo "Idle Time is greater than the target set time of $idletime_secs seconds!"
fi

##### check idle in hours
idletime_hour="24" #<-- set to 24 hours
h=$(($idl / 3600)) m=$((($idl % 3600) / 60)) s=$(($idl % 60))
get_hour=$(printf "%2d\n" $h)
if [ $get_hour -gt $idletime_hour ]; then
    echo "Idle Time is $get_hour greater than the target set time of $idletime_hour hours!"
fi