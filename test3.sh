#!/bin/bash
who="Done"


if [[ -d ./hw1/ ]]
then
    echo "./hw1/ exists on your filesystem. 2.A and 2.B, 2.D already done"
cd ./hw1/data
count=$(ls -1 | wc -l)
cd
#count=$(find ${./hw1/data} -type f | wc -l)
echo "please, enter number greater than " $count
read number
echo $(seq $count $number)

else

#2.A
mkdir -p hw1/{bin,data}

echo 2.A $who!

#2.B
cp ./test1.sh ./hw1/bin/
chmod u+x test1.sh
echo 2.B $who!

count=1 
echo Please, insert number smaller than 50
read number

fi

#2.C

if [ $number -gt $count ]
	then
	FLOAT="$(calc $number/5)"
	INTA=${FLOAT/\.*}
        INT="$(calc $count + $INTA)"
else
	INT=$count
fi

echo received int $INT

for i  in $(seq $count $INT)
do
   echo $i
   FILE="./hw1/data/$i.txt"
   echo $FILE # show file name
   > $FILE # create files

	for j  in 1 2 3 4 5
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

echo 2.E $who!
