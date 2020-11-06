i=1
sum=0
for num in "$@" 
do
    sum=$((sum + "$num"))  
     arr+=("$sum")
    i="$((i + 1))"
done
echo "${arr[@]}"
