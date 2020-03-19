#!/bin/bash -x

#CONSTANT
ISPARTTIME=1
ISFULLTIME=2
EMPRATEPERHRS=20

empCheck=$((RANDOM%2+1))

echo $empCheck 

case $empCheck in
		$ISFULLTIME)
			empHrs=8;;
		$ISPARTTIME)
			empHrs=4;;
		*)
			empHrs=0;;

esac

salary=$(($empHrs * $EMPRATEPERHRS ))

echo "Salary : " $salary
