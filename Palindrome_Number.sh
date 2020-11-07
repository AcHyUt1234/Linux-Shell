#!/bin/bash
num=$1
x=$num
if [ -z "$1" ]
then
echo "-1"
else

reverse=0
while [ $x -gt 0 ]
do
	temp=$(( $x%10 ))
	reverse=$(( reverse*10 ))
	reverse=$(( reverse+temp ))
	x=$(( x/10 ))
done
if [ $num -eq $reverse ]
then
	echo "Yes"
else
	echo "No"
fi
fi