#!/bin/bash -x

#CONSTANT
ISPARTTIME=1
ISFULLTIME=2
EMPRATEPERHRS=20
NOOFWORKINGDAYS=20

#VARIABLES
totalSalary=0

for (( day=1; day<=$NOOFWORKINGDAYS; day++ ))
do
	empCheck=$((RANDOM%2+1))

	case $empCheck in
		$ISPARTTIME)
			empHrs=4;;
		$ISFULLTIME)
			empHrs=8;;
		*)
			empHrs=0;;
	esac

	salary=$(($empHrs * $EMPRATEPERHRS ))

	totalSalary=$(( $totalSalary + $salary ))

done
echo "total monthly salary" $totalSalary
