#!/bin/bash

read -p "What is your name?: " name

if [ $name == "Simon" ]; then
	echo "You have been blocked: $name"


elif [ $name != "Ahmad" ]; then

	echo "You are admin: $name"


else 
	echo "Welcome back $name"

fi


