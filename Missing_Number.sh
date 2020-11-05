arr=( "$@" )
if [ $# -eq 0 ]
then
echo "-1"
else

for ((i = 0; i< "$#"; i++)) 
do
    
    for((j = 0; j<"$#"-"$i"-1; j++)) 
    do
      
        if [ "${arr[j]}" -gt "${arr[$((j+1))]}" ] 
        then
            temp="${arr[j]}" 
            arr[$j]="${arr[$((j+1))]}"   
            arr[$((j+1))]="$temp" 
        fi
    done
done

if [ "${arr[0]}" -ne 0 ]
then
echo "0"
flag=1

else

for ((i=0;i<$(($#-1));i++))
do
if [ $((${arr[$i]}+1)) -ne "${arr[$((i + 1))]}" ]
then
    missing_number=$((${arr[$i]}+1))
    flag=1
    break
fi
done

fi

if [ $flag -eq 1 ]
then
echo "$missing_number"
else
echo "-1"
fi

fi