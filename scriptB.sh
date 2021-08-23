#!bin/bash
TIMESTAMP=$(date +"%d-%m-%Y-%H-%M") #Getting current date
NUM=1 #First number of loop
RANDOMLETTERS=$(openssl rand -base64 1000) #Generating 1000 random letters for txt file
while [ "$NUM" -le 10 ]; do #Start of the loop
	echo "$RANDOMLETTERS" > test_"$TIMESTAMP"_$NUM.txt #Putting random letters to txt file
	NUM=$(( NUM + 1 )) #add 1 until it becomes 10
done #The end of the loop

#To schedule it to run every 6 hours we should use crontab command or /etc/crontab/ and put there * */6 * * * sh /[directory]/[scriptname]
#F.E. * */6 * * * sh /home/sashok2/test2/script2.sh
