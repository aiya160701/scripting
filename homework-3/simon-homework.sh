#!/bin/bash

if (( $EUID != 0 )); then
	echo "Please run as root"
	exit 
fi

if [ $# -le 0 ]; then
	echo "You have to provide 1 argument"
	exit
fi 


random_passwd="s3curePass_$RANDOM"
useradd $1 -c "$2 $3 $4 $5 $6 $7 $8 $9" -p $random_passwd  

if [ $? -eq 0 ]; then
        echo Succeeded
else
        echo Failed
fi

passwd -e $1

echo """User: $1
Password: $random_passwd
host: $(curl ifconfig.me)
"""



