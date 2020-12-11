#! /bin/bash
#cars.sh
#Drew Bozarth
INPUT="0"
while [ "$INPUT" -ne "3" ]
do
	case "$INPUT" in
		"1") echo "Type in the year of the car"
		read -r YEAR
		echo "Type in the make of the car"
		read -r MAKE
		echo "Type in the model of the car"
		read -r MODEL
		NEWCAR="$YEAR:$MAKE:$MODEL"
		echo "$NEWCAR" >> My_old_cars;;
		"2") sort My_old_cars;;
		"3") echo "Goodbye!";;
	esac
	echo "Enter 1 to enter a new car"
	echo "Enter 2 to list all of the current cars"
	echo "Enter 3 to quit the program"
	read -r INPUT
done
