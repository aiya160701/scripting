#!/bin/bash


echo "Starting program at $(date)"

echo "Running program $0 with $# argument and with pid: $$"

if [ $# -le 1 ]; then
	echo "You must provide more than 1 argument"
	exit
fi


for arg in $@; do 
	userdel $arg
	if [ $? -ne 0 ]; then
		echo "adding user $arg failed"
	else
		echo "Bye guys $arg"
	fi

done


