##!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME=4
TOTAL_WAGE=0
PER_MONTH_WAGE=0
DAY=0
HOURS=0
echo "calculte the wages for a month"
echo "Day		DailyWage         TotalWage"
GetWorkHours()
{
#        check=$(( RANDOM%3 ))
        case $check in
        1)
#               echo "Employee Present for full time"
                emphrs=8;;
        2)
#               echo "Employee Present for part time"
                emphrs=4;;
        *)
#               echo "Absent"
                emphrs=0;;
esac
}
while (( $(($DAY<20)) && $(($HOURS<=100)) ))
do
        check=$(( RANDOM%3 ))
        GetWorkHours $check
        HOURS=$(( $HOURS + $emphrs ))
        TOTAL_WAGE=$(( $emphrs * $WAGE_PER_HOUR ))
        PER_MONTH_WAGE=$(( $TOTAL_WAGE + $PER_MONTH_WAGE ))
        DAY=$((DAY+1))
        echo "Day $DAY		$TOTAL_WAGE               $PER_MONTH_WAGE"
done
#echo "Month wages : " $PER_MONTH_WAGE
#echo "Total hours : " $HOURS

