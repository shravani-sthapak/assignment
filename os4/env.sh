echo `printenv`

echo Enter path you want to append;
read p
`export PATH=$PATH:$p`
echo `printenv $PATH`
