# !/bin/sh

#1. You are given a list of names.Your task is to read them into an array and then filter out (remove) all the names containing the user given letter
echo enter the value of n 
read n
echo enter the names
for (( i=0; i<n; i=i+1 ))
{
	read name 
	arr[i]=$name 
}
 
for i in ${arr[@]}
do 
	echo $i
done 
echo enter the character 
read ch
for i in ${arr[@]}
do
	if [[ $i = *"$ch"* ]]
	then
		continue
	else
	a[$k]=$i
	k=`expr $k + 1`
	echo $i
	fi
done
echo array after deletion
for i in ${a[@]} 
do
	echo $i
done

