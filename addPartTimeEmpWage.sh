#!/bin/bash -x

#CONSTANT

ISPARTTIME=1
ISFULLTIME=2
EMPRATEPERHRS=20

randomCheck=$((RANDOM%2+1))
echo $randomCheck

if [ $ISFULLTIME -eq  $randomCheck ]
then
<<<<<<< HEAD
   empHrs=8
elif [ $ISPARTTIME -eq $randomCheck ]
then
   empHrs=4
=======
	empHrs=8
elif [ $ISPARTTIME -eq $randomCheck ]
then
	empHrs=4
>>>>>>> UC2
fi

salary=$(( $empHrs * $EMPRATEPERHRS ))
echo $salary
<<<<<<< HEAD


=======
>>>>>>> UC2
