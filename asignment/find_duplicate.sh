# !/bin/sh
echo "enter the num :"
read num
for (( i=0; i<num ; i=i+1 ))
{
  read data
  arr[i]=$data

}
echo "array value is :"
for i in ${arr[@]}
do
    echo $i
done
temp=0
echo finding the duplicate 
for (( i=0; i<num ; i=i+1 ))
{
	for (( j=i+1; j<num ; j=j+1 ))
	{
		if [ ${arr[i]} == ${arr[j]} ]
		then
			echo ${arr[i]}
			temp=`expr $temp + 1`
	
		fi
	}

}
if [ $temp -eq 0 ]
then
	echo duplicate not found
fi
