#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME=4
TOTAL_WAGE=0
PER_MONTH_WAGE=0
DAY=1
while [ $DAY -ne 20 ]
do
	check=$(( RANDOM%3 ))
	case $check in
	1)
#		echo "Employee Present for full time"
		emphrs=8;;
	2)
#		echo "Employee Present for part time"
		emphrs=4;;
	*)
#		echo "Absent"
		emphrs=0;;
esac
	TOTAL_WAGE=$(( $emphrs * $WAGE_PER_HOUR ))
	PER_MONTH_WAGE=$(( $TOTAL_WAGE + $PER_MONTH_WAGE ))
DAY=$((DAY+1))
done
echo "Month wages : " $PER_MONTH_WAGE
