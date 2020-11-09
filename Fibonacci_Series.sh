i=0
a=0
b=1
if [ -z "$1" ]
then
echo "-1"
else

while [ $i -lt $1 ] 
do
    echo -n "$a "
    fn=$((a + b)) 
    a=$b 
    b=$fn 

i=$((i +1))
done
fi
