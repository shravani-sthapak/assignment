echo Enter name of file
read f

echo Enter word
read word

echo `grep -ow $word $f| wc -w`
