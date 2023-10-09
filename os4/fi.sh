echo Enter name of file
read f

k=`wc -l < $f`
k=$((k-3))
sum=-1
while read a
do
 ((sum++))
 if [ $sum -ge $k ]
 then 
	echo $a
 fi
done < $f

