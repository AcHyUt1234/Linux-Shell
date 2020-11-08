Num=$1
if [ -z "$1" ]
then
echo "-1"
else

s=0 

while [ "$Num" -gt 0 ] 
do
    # get Remainder 
    k=$(( "$Num" % 10 ))  
  
    # get next digit 
    Num="$(( Num / 10 )) "
  
    # calculate sum of 
    # digit   
    s="$(( s + k ))"
done
fi
echo  "$s"
