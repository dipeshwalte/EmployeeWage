#!/bin/bash
echo Welcome to Employee wage computation
dailyWage=0
wagePerHour=20
fullDayHour=8
workingDaysInMonth=20
wagesForMonth=0
for((i=1;i<=$workingDaysInMonth;i++))
do
empPresentFlag=$((RANDOM%2))
case $empPresentFlag in
0)
   echo Employee is present
   dailyWage=$(($wagePerHour*$fullDayHour))
   echo Daily Wage is - $dailyWage
   wagesForMonth=$(($wagesForMonth+$dailyWage))
   if [ $((RANDOM%2)) -eq 0 ]
   then
         echo 'Employee did part time work'
         dailyWage=$(($dailyWage+$wagePerHour*8))
         echo 'Wage with Part time work' $dailyWage
         wagesForMonth=$(($wagesForMonth+$wagePerHour*8))
   fi;;
1)
   echo Employee is absent
   echo Daily Wage is - $dailyWage
;;
*)
   echo Something went wrong
;;
esac
done
echo 'wages for month -' $wagesForMonth

