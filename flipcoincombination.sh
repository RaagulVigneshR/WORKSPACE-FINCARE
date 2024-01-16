echo "flip coin combination"
a=$((random%2))
if [ $a -eq 1 ]
then 
 echo "Heads"
else
 echo "Tails"
fi
