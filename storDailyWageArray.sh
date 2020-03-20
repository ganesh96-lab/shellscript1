#! /bin/bash -x

#CONSTANTS FOR THE PROGRAM
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=100
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

#VARIABLES
totalWorkHours=0
totalWorkingDays=0

function getWorkingHours(){
	case $1 in
		$IS_FULL_TIME)
			workHours=8;;
		$IS_PART_TIME)
			workHours=4;;
		*)
			workHours=0;;
	esac
	echo $workHours
}

function calDailyWage(){

local workHrs=$1
wage=$(($workHrs * $EMP_RATE_PER_HR))
echo $wage
}

while [[ $totalWorkHours -le $MAX_HRS_IN_MONTH && $totalWorkingDays -le $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)))"
	totalWorkHours=$(($totalWorkHours + $workHours))
	empDailyWage[$totalWorkingDays]="$( calDailyWage $workHours )"
done

totalSalary="$( calDailyWage $totalWorkHours )"
echo "total salary : " $totalSalary
echo "Daily wage : " ${empDailyWage[@]} " "
