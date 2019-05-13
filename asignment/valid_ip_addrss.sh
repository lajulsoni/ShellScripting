#!/bin/bash

i=0
file="data1.txt"
while read line 
do
	if [ $i -gt 0 ]
	then
	set -- "$line"
  	IFS="."; declare -a arr=($*)
   if [ ${#arr[@]} -eq 4 ]
   then

	  if [ ${arr[1]} -ge 0 ] && [ ${arr[1]} -le 255 ]
	  then
		  if [ ${arr[2]} -ge 0 ] && [ ${arr[2]} -le 255 ]
		  then
			  if [ ${arr[3]} -ge 0 ] && [ ${arr[3]} -le 255 ]
			  then 
			  	if [ ${arr[4]} -ge 0 ] && [ ${arr[4]} -le  255 ]
				  then
					  echo ${arr[$i]} is valid ip address
			  	fi
			  fi
		  fi
	  fi
     fi
fi

  	i=`expr $i + 1`
	
done<data1.txt
