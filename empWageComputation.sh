#!/bin/bash

EMP_WAGE_PER_HOUR=20;
PRESENT=1;
PART_TIME=2;
WORKING_HOUR=8;
MAX_WORKING_DAY=20;
MAX_WORKING_HOUR=40;

totalworkinghour=0;
day=0;

while [[ $day -lt $MAX_WORKING_DAY && $totalworkinghour -lt $MAX_WORKING_HOUR ]]
do

   if [ $totalworkinghour -eq $((MAX_WORKING_HOUR - WORKING_HOUR/2)) ]
   then
      ispresent=$PART_TIME;
   else

      ispresent=$((RANDOM%3));
   fi

   case $ispresent in

      $PRESENT)

         empHr=$WORKING_HOUR;

      ;;

      $PART_TIME)

         empHr=$((WORKING_HOUR/2));

      ;;

      *)

         empHr=0;

      ;;
   esac;
   totalworkinghour=$((totalworkinghour + empHr));
   ((day++));
done;

totalsalary=$((totalworkinghour * EMP_WAGE_PER_HOUR));

echo "employee total working hour:" $totalworkinghour;
echo "employee monthly wage: $"$totalsalary "USD";
echo "employee total working days:" $day;




