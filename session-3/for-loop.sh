#!/bin/bash



#items="Abdul Ahmad Kris"

#for item in $items; do 
#	mkdir /tmp/$item
#	useradd $item /tmp/$item

#done


for file in $(seq 1 50); do
	rm -rf File-$file
done 
