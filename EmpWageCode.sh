#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
check=$(( RANDOM%3 ))
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME=4
TOTAL_WAGE=0
if [ $check -eq 0 ]
then
	echo "Employee Present for full time"
	TOTAL_WAGE=$(($WAGE_PER_HOUR * $FULL_DAY_HOUR))
	echo "Total Wage : " $TOTAL_WAGE
elif [ $check -eq 1 ]
	echo "Employee Present for part time"
	TOTAL_WAGE=$(($WAGE_PER_HOUR * $PART_TIME))
	echo "Total Wage : " $TOTAL_WAGE
else
	echo "Employee Absent"
	echo "Total Wage : " $TOTAL_WAGE
fi

