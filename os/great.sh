echo Enter a
read a
echo Enter b
read b
echo Enter c
read c

if [[ $a > $b && $a > $c ]]
then
   echo a is greatest: $a
elif [[ $b > $c && $b > $a ]] 
then
   echo b is greatest: $b
else
   echo c is greatest: $c
fi

