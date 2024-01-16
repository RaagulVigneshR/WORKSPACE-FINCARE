declare -A SC
flips=1000

for (( i=0; i<$flips; i++ )); do
  result=$(( RANDOM % 2 ))
  (( SC[result ? "Tails" : "Heads"]++ ))
done

heads=$(( (SC["Heads"] * 100) / flips ))
tails=$(( 100 - heads ))

echo "Singlet Combination Results:"
echo "Heads: $heads%"
echo "Tails: $tails%"
