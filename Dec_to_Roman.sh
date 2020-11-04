#!/bin/bash
num=$1
decimal=$num

if [ -z "$1" ]
then
echo "-1"
else

if [ "$decimal" -gt 3999 ]
then
echo "-1"

else

while [ "$decimal" -gt 0 ] 
do

  if [ "$decimal" -ge 1000 ] 
  then
    romval="$romval M"
    decimal=$(( decimal - 1000 ))
  elif [ $decimal -ge 900 ] 
  then
    romval="$romval CM"
    decimal=$(( decimal - 900 ))
  elif [ $decimal -ge 500 ] 
  then
    romval="$romval D"
    decimal=$(( decimal - 500 ))
  elif [ $decimal -ge 400 ] 
  then
    romval="$romval CD"
    decimal=$(( decimal - 400 ))
  elif [ $decimal -ge 100 ] 
  then
    romval="$romval C"
    decimal=$(( decimal - 100 ))
  elif [ $decimal -ge 90 ] 
  then
    romval="$romval XC"
    decimal=$(( decimal - 90 ))
  elif [ $decimal -ge 50 ] 
  then
    romval="$romval L"
    decimal=$(( decimal - 50 ))
  elif [ $decimal -ge 40 ] 
  then
    romval="$romval XL"
    decimal=$(( decimal - 40 ))
  elif [ $decimal -ge 10 ] 
  then
    romval="$romval X"
    decimal=$(( decimal - 10 ))
  elif [ $decimal -ge 9 ] 
  then
    romval="$romval IX"
    decimal=$(( decimal - 9 ))
  elif [ $decimal -ge 5 ] 
  then
    romval="$romval V"
    decimal=$(( decimal - 5 ))
  elif [ $decimal -ge 4 ] 
  then
    romval="$romval IV"
    decimal=$(( decimal - 4 ))
  elif [ $decimal -ge 1 ] 
  then
    romval="$romval I"
    decimal=$(( decimal - 1 ))
  fi
done

echo "$romval"
fi
fi