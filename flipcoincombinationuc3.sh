declare -A DC
flips=1000

for (( i=0; i<$flips; i++ )); do
  result1=$(( RANDOM % 2 ))
  result2=$(( RANDOM % 2 ))
  
  case "$result1$result2" in
    00) (( DC["HH"]++ ));;
    01) (( DC["HT"]++ ));;
    10) (( DC["TH"]++ ));;
    11) (( DC["TT"]++ ));;
  esac
done

for combination in HH HT TH TT; do
  percentage=$(( (DC["$combination"] * 100) / flips ))
  echo "$combination: $percentage%"
done
