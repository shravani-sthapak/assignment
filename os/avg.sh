echo Enter numbers you want to calculate
read n
sum=0

echo Enter Numbers:
for((i=0; i < n; i++))
do 
read k
sum=$((sum+k))
done

avg=`echo "scale=2;$sum/$n"|bc`
echo Average of Numbers is =  $avg

