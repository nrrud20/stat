#!/bin/bash

who="Done"

#2.A
mkdir -p hw1/{bin,data}

echo 2.A $who!

#2.B
cp ./test1.sh ./hw1/bin/
chmod u+x test1.sh
echo 2.B $who!

#2.C
echo Please, insert number smaller than 50
read number

if [ $number -gt 5 ]
	then
	FLOAT="$(calc $number/5)"
	INT=${FLOAT/\.*}
else
	INT=1
fi

echo $INT

for i  in $(seq 1 $INT)
do
   FILE="./hw1/data/$i.txt"
   echo $FILE # show file name
   > $FILE # create files

	for j  in 1 2 3 4 5
	#for j in $(seq $number)
	do
    	num=$[($RANDOM % 15000)]
	num=$(echo "scale=8; $RANDOM/32768" | bc )
#	echo $num
	echo "$num" >> "$FILE"		
#	printf -v num "%.5f" ${num}
	done

done 

echo 2.C $who!

#2.D

echo Please, insert number smaller than 50 one more_time
read number
if [ $number -gt 5 ]
	then
	FLOAT="$(calc $number/5)"
	INT=${FLOAT/\.*}
else
	INT=1
fi

echo $INT

for i  in $(seq 1 $INT)
do
   FILE="./hw1/data/$RANDOM.txt"
#   FILE="./hw1/data/$i.txt"
   echo $FILE # show file name
   > $FILE # create files

	for j  in 1 2 3 4 5
	#for j in $(seq $number)
	do
    	num=$[($RANDOM % 15000)]
	num=$(echo "scale=8; $RANDOM/32768" | bc )
#	echo $num
	echo "$num" >> "$FILE"		
#	printf -v num "%.5f" ${num}
	done

done 

echo 2.D $who!



