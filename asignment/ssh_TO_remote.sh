host=mahannee@192.168.4.132
file_name=$1
file="/home/mahannee/ -name '\\$file_name'"

if ssh $host find  $file > a.txt
then
	echo "File exists"
	var=$(cat a.txt)
	arr=(${var// / })
	echo "file paths are ${arr[@]}"
	file_path=${arr[0]}
	if ssh $host [ -w $file_path ]
	then
		echo "writable"
		rcp mahannee@192.168.4.132:$file_path .
		grep -wn 'count' file_op.sh > "new_file.txt"
		sed -i 's/count/num/g' "new_file.txt"
	else
		echo "not writable"
	fi
else
	echo "File does not exist"
fi

