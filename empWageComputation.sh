#!/bin/bash
echo Welcome to Employee Wage computation
if [ $((RANDOM%2)) -eq 0 ]
then
   echo Employee is Present
else
	echo Employee is Absent
fi
