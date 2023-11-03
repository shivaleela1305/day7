random_numbers=()
for ((i=0; i<10; i++))
do
random_numbers+=($((100 + RANDOM % 900)))
done

first_smallest=1000
second_smallest=1000
first_largest=0
second_largest=0

for number in "${random_numbers[@]}"
do
if ((number < first_smallest))
then
second_smallest=$first_smallest
first_smallest=$number
elif ((number < second_smallest && number != first_smallest))
then
second_smallest=$number
fi

if ((number > first_largest))
then
second_largest=$first_largest
first_largest=$number
elif ((number > second_largest && number != first_largest))
then
second_largest=$number
fi
done

echo "Random numbers: ${random_numbers[@]}"
echo "2nd smallest element: $second_smallest"
echo "2nd largest element: $second_largest"
