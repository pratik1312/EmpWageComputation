echo "Welcome to Employee Wage Computation Program"
#!/bin/bash -x
isPresent=1
check=$(( RANDOM%2 ))
if [ $isPresent -eq $check ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
