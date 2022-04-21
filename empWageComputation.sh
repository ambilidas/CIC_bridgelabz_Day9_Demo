#!/bin/bash

EMP_WAGE_PER_HOUR=20;
PRESENT=1;
WORKING_HOUR=8;
PART_TIME=2;

ispresent=$((RANDOM%2));

if [ $ispresent -eq $PRESENT ]
then
  
  echo "employee is present ";
  dailywage=$((WORKING_HOUR * EMP_WAGE_PER_HOUR));
elif [ $ispresent -eq $PART_TIME ]
then
   dailywage=$((WORKING_HOUR/2 * EMP_WAGE_PER_HOUR));
   echo "employee is working part time";

else
  dailywage=0;
  echo "employee is absent ";
fi

echo "employee daily wage:" $dailywage "USD";


