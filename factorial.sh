#! /bin/sh
echo enter num value
read num
fact=1
if [ $num -eq 0 ]
then 
  echo factorial is one 
elif [ $num -eq -1 ]
then 
  echo no factorial for negavitive
else 
while [ $num -gt 0 ]
do
fact=`expr $fact \* $num`
num=`expr $num - 1`
done
echo $fact
fi
