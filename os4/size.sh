function size()
{
	echo `du -h $1`
}

echo Enter filename:
read f

size $f
