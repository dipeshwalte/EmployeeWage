#!/bin/bash
echo Welcome to Employee wage computation
dailyWage=0
wagePerHour=20
fullDayHour=8
workingDaysInMonth=0
wagesForMonth=0
workingHours=0
getWorkHours(){
	if [ $1 -eq 0 ]
	then
	dailyWorkHours=16
	else
	dailyWorkHours=8
	fi
}
while [ $workingDaysInMonth -lt 20 -a $workingHours -lt 100 ]
do
   empPresentFlag=$((RANDOM%2))
   case $empPresentFlag in
   0)
		 dailyWorkHours=0
       echo Employee is present
       dailyWage=$(($wagePerHour*$fullDayHour))
		 echo daily wage - $dailyWage
       wagesForMonth=$(($wagesForMonth+$dailyWage))
		 partTimeFlag=$((RANDOM%2))
		 getWorkHours $partTimeFlag
       workingHours=$(($workingHours+$dailyWorkHours))
       if [ $partTimeFlag -eq 0 ]
       then
            echo 'Employee did part time work'
            dailyWage=$(($dailyWage+$wagePerHour*8))
            wagesForMonth=$(($wagesForMonth+$wagePerHour*8))
				echo daily wage - $dailyWage
            if [ $workingHours -gt 100 ]
            then
               break
            fi
       fi
      workingDaysInMonth=$(($workingDaysInMonth+1));;
    1)
      echo Employee is absent
		dailyWage=0
		echo Daily Wage - $dailyWage
    ;;
    *)
       echo Something went wrong
    ;;
    esac
done
echo 'wages for month -' $wagesForMonth
