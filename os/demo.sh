read a
read b

function add()
{
 c=$(($1+$2))
 return $c
}

add $a $b
k=$?
echo $k
