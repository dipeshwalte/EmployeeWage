#!/bin/bash
echo Welcome to Employee Wage computation
dailyWage=0
wagePerHour=20
fullDayHour=8
if [ $((RANDOM%2)) -eq 0 ]
then
   echo Employee is present
   dailyWage=$(($wagePerHour*$fullDayHour))
   echo Daily Wage is - $dailyWage
   if [ $((RANDOM%2)) -eq 0 ]
   then
      echo 'Employee did part time work'
      dailyWage=$(($dailyWage+$wagePerHour*8))
      echo 'Wage with Part time work' $dailyWage
   fi
else
   echo Employee is absent
   echo Daily Wage is - $dailyWage
fi
