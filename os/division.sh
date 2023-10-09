echo Enter percentage
read per

case $((
  per >= 0 && per <= 60 ? 1 :
  per > 60 && per <= 70 ? 2 :
  per > 70 && per <= 80 ? 3 :
  per > 80 && per <= 90 ? 4 :
  per > 90 && per <=100 ? 5 : 0)) in 
		1)
		echo division is E;;
		2)
		echo division is D;;
		3)
		echo division is C;;
		4)
		echo division is B;;
		5)
		echo division is A;;
		*)
		echo division is F;;
esac
