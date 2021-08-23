#!bin/bash
#Looking for PID of java
PID=$(ps -C java -o pid | egrep -o '[0-9.]+')

#Creating directory if its not created
mkdir -p /tmp/investigation

#Log all the files accessed by java processes to access_$PID.txt
ls -l /proc/$PID/fd > /tmp/investigation/access_$PID.txt
