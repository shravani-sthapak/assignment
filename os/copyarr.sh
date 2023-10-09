echo Enter number of elements in array :
read n

for (( i=0; i<n; i++))
do
	read arr[i]
done

for (( i=0; i<n; i++))
do
	c[i]=${arr[i]}
done

echo New array elements are: ${c[*]}
