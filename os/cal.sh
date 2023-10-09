echo Enter a
read a

echo Enter b
read b

echo Enter c
read c

d=$((a+b+c))
e=$(((a-b)*c))
f=$((a*b/c))

echo d is : $d
echo e is : $e
echo f is : $f


