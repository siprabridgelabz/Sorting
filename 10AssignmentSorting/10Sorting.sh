read -p "Enter a Number : " a
read -p "Enter a Number : " b
read -p "Enter a Number : " c
w=$(($a+$(($b*$c))))
x=$(((($a*$b))+$c))
y=$(($c+$(($a/$b))))
z=$(((($a%$b))+$c))
echo $w
echo $x
echo $y
echo $z
declare -A dict=([w]="$w" [x]="$x" [y]="$y" [z]="$z")
echo ${dict[@]}
declare -a ar =("w" "x" "y" "z")
echo ${ar[@]}
for ((i=0;i<=4;i++))
do
for((j=1;j<=$((4-$i));j++))
do
if [[ ${ar[$(($j-1))]} -gt ${ar[$j]} ]]
then
temp=${ar[$(($j-1))]}
ar[$(($j-1))]=${ar[$j]}
ar[$j]=$temp
fi
done
done
echo ${ar[@]}
for ((i=0;i<=4;i++))
do
for ((j=1;j<=$((4-$i));j++))
do
if [[ ${ar[$(($j-1))]} -lt ${ar[$j]} ]]
then
temp=${ar[$(($j-1))]}
ar[$(($j-1))]=${ar[$j]}
ar[$j]=$temp
fi
done
done
echo ${ar[@]}


