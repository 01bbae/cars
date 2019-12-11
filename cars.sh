#! /bin/bash
# cars.sh
# BJ Bae

go=true
while [ $go == true ] 
do
	echo "Type 1 to enter a new car"
	echo "Type 2 to display the list of cars"
	echo "Type 3 to quit and exit the program"
	read number
	case $number in
		1 )
			echo "Enter Year"
			read year
			echo "Enter Make"
			read make
			echo "Enter Model"
			read model
			echo "$year:$make:$model" >> My_Old_Cars.sh
			;;
		2 )
			sort My_Old_Cars.sh
			;;
		3 )
			go=false
			echo "Goodbye"
			;;
		* )
			;;
	esac
done


