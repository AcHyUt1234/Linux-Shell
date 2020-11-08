s=$1
rev=""
for(( i=0 ; i<${#s} ; i++ )); do rev="${s:i:1}$rev"; done

echo "$rev"
