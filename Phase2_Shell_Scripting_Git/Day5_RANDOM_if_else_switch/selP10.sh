#! /bin/bash

read -p "Enter a num from 1 to 7: " num

case ${num} in

        1) echo "Monday"   ;;
        2) echo "Tuesday"   ;;
        3) echo "Wednesday" ;;
        4) echo "Thursday"  ;;
        5) echo "Friday"  ;;
        6) echo "Saturday"   ;;
        7) echo "Sunday" ;;

        *) echo "Entered number is not in range 1 to 7" ;;
esac

