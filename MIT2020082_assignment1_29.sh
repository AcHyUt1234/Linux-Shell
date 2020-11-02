n=$1
sd=0
nd=0
sum=0
on=$n

if [ -z "$1" ]
then
echo "-1"
else

while [ "$n" -gt 0 ]
do
    sd="$(( "$n" % 10 ))"

        fact=1

        for((i=2;i<="$sd";i++))
        {
          fact=$((fact * i)) 
        }
        sum="$((sum + fact))"
    n="$(( "$n" / 10 ))"
    nd="$(( "$nd" + 1))" 
done
if [ $on == $sum ]
then
   echo "Yes"
else
   echo "No"
fi
fi