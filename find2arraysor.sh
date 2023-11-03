random_numbers=()
for ((i=0; i<10; i++))
do
random_numbers+=($((100 + RANDOM % 900)))
done
sorted_numbers=($(printf "%s\n" "${random_numbers[@]}" | sort -n))
second_smallest=${sorted_numbers[1]}
second_largest=${sorted_numbers[-2]}

echo "Random numbers: ${random_numbers[@]}"
echo "Sorted array: ${sorted_numbers[@]}"
echo "2nd smallest element: $second_smallest"
echo "2nd largest element: $second_largest"
