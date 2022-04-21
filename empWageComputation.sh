#!/bin/bash

EMP_WAGE_PER_HOUR=20;
PRESENT=1;
WORKING_HOUR=8;

ispresent=$((RANDOM%2));

if [ $ispresent -eq $PRESENT ]
then
  
  echo "employee is present ";
else
  dailywage=0;
  echo "employee is absent ";
fi



