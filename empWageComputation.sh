#!/bin/bash

EMP_WAGE_PER_HOUR=20;
PRESENT=1;
WORKING_HOUR=8;
PART_TIME=2;
MAX_WORKING_DAY=20;

totalsalary=0;

for ((day-0;day<$MAX_WORKING_DAY;day++))
do

ispresent=$((RANDOM%3));


case $ispresent in

   $PRESENT)

     dailywage=$((WORKING_HOUR * EMP_WAGE_PER_HOUR));

   ;;

   $PART_TIME)

      dailywage=$((WORKING_HOUR/2 * EMP_WAGE_PER_HOUR));

   ;;

   *)

      dailywage=0;

   ;;
esac;

echo $dailywage;
totalsalary=$((totalsalary + dailywage ));
done;

echo "employee monthly wage: $"$totalsalary "USD";



