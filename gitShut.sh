#!/bin/bash
cd ~

element=($(find . -name ".git"))	#get all git repository in disk;

for element in "${arrayname[@]}"; do
	echo $(git -C ${element//".git"/""} add -A)	#add all file to stack
	echo $(git -C ${element//".git"/""} commit -m "do it on shutdown by rp76")	#commit files
	echo $(git -C ${element//".git"/""} push)	#push them
done

shutdown 0 #shutdown computer immediately
