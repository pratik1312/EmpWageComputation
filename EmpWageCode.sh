#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
check=$(( RANDOM%2 ))
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
TOTAL_WAGE=0
if [ $check -eq 0 ]
then
	echo "Employee Present"
	TOTAL_WAGE=$(($WAGE_PER_HOUR * $FULL_DAY_HOUR))
	echo "Total Wage : " $TOATL_WAGE
else
	echo "Employee Absent"
	echo "Total Wage : " $TOTAL_WAGE
fi

