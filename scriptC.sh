#!bin/bash

mkdir -p /tmp/investigation #Creating investigation folder if its not exits 
for pid in $(ps -C java -o pid=); do #Starting the loop that search java PIDs
   ls -l /proc/$pid/fd > /tmp/investigation/access_$pid.txt #Log that PIDs file accesses to access_$pid.txt
done #The end of the loop
