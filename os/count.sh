echo Enter string: 
read s

count=`echo $s|wc -m`

if [ $count -lt 10 ]
then
	echo "string $s has less than 10 characters"
fi
