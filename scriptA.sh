#!/bin/bash
echo "Enter the directory"
read directory #Getting directory where we have to change servername
echo "Enter the current servername"
read serverName #Getting current servername in files that we have to change
echo "Enter the new servername"
read newServerName #Getting new server name for changing
cd $directory #Go to the directory where the server name will change 
grep -rli "$serverName" * | xargs -i@ sed -i "s/$serverName/$newServerName/g" @ #We are looking for files that contain the name of the server using grap command. Then we replace them to new server name using the sed command
