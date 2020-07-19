#!/bin/bash

declare -A month

month=$(( $RANDOM%12 ))

case $month in
	1)
	month="January"
	;;
	2)
	month="February"
	;;
	3)
	month="March"
	;;
	4)
	month="April"
	;;
	5)
	month="May"
	;;
	6)
	month="June"
	;;
	7)
	month="July"
	;;
	8)
	month="August"
	;;
	9)
	month="September"
	;;
	10)
	month="October"
	;;
	11)
	month="November"
	;;
	12)
	month="December"
	;;
esac
echo "Months are" $month
j=0
for (( i=1;i<=50;i++ ))
do
	birthMonth=$(( $RANDOM%12))

	if (( $birthMonth==$month ))
	then
		flag=1
		while (( $flag!=0 ))
		do
			month[$j]="Individual"$i" "
			j=$(( $j+1 ))
			flag=0
		done
	fi
done
echo ${month[@]}
