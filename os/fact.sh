echo Enter number:
read num

function fact()
{
	if [ $1 == 1 ]
	then
		 return 1
	else
		 k=$(($1-1))
		 fact $k
		 x=$(($1 * $?))
		 return $x
	fi 
}

fact $num
result=$?
echo $result
