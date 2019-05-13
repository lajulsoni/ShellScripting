
#2.The file will have the data like below. Your task is to identify the performance grade for each student. If the average of the three scores is 80 or more, the grade is 'A'. If the average is 60 or above, but less than 80, the grade is 'B'. If the average is 50 or above, but less than 60, the grade is 'C'. Otherwise the grade is 'FAIL'. 

#Data will be like as below in a file:


#name marks1 marks2 marks3
#aaa 52 72 25
#bbb 53 30 70
#ccc 77 79 80
#ddd 98 87 78


i=0
file="data.txt"
while read line 
do
	if [ $i -gt 0 ]
	then
		arr=(${line// /})
		sum=`expr${arr[1]} + ${arr[2]} +${arr[3]}`
		avrg=`expr  $sum / 3`
		if [ $avrg -ge 80 ]
		then 
			echo "${arr[0]} grade 'A'" 
		elif [ $avrg -gt "60" ] && [ $avrg -lt "80" ]
		then 
			echo ${arr[0]} grade 'B'
		elif [ $avrg -ge "50" ] && [ $avrg -lt "60" ]
		then 
			echo ${arr[0]} grade 'C'
		else
			echo ${arr[0]} Fail

		fi

	fi
	i=$((i+1))
done<$file
