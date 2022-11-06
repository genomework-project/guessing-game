#!/usr/bin/bash

echo Hello
echo what is your name?
read name

echo Hi $name, welcome to Guessing game.
function ask {
	echo "Please enter the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Your guess is Too low."
	else
		echo "Your guess is Too high."
	fi
	ask
done

echo "Well done! It is the correct answer, here is the list of files:"
echo "---" && ls -1
