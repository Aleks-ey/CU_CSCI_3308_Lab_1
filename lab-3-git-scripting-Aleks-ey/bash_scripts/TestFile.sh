#!/bin/bash
echo $1 
File = $1
if [test -f "$File"]
then 

else
	echo "Error file does not exist";
	exit 
fi

while :
do
	echo "Please choose one of the following:"
	echo "1) count lines"
	echo "2) count words"
	echo "3) add text"
	echo "4) copy"
	echo "5) exit"

	read 

	case $REPLY in
		1) 
			num_lines = wc --lines < $File
			echo "Number of lines in file: $num_lines"
		2)
			num_words = grep -n Lorem|model|Ipsum|will $File
			echo "Line number were words were found: $num_words"
		3)
			echo "Write something to append to the file:"
			read $Option
			echo $Option >> $File
		4)
			mkdir solution
			path = C:\Users\Aleks\lab-3-git-scripting-Aleks-ey\solution
			cp "$File" "$path"
		5|$REPLY>5|$REPLY<1)
			exit
done
