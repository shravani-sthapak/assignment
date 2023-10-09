echo Enter name of file
read f

k=`ls -l $f|cut -c 1`

if [ $k == '-' ]
then 
	echo orfinary file
elif [ $k == 'd']
then 
	echo directory
elif [ $k == 'c' || $k == 'b' ] 
	echo device file
else
	echo other file
fi
