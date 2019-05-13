
#1.Read a directory and read all files in that directory and i total count of the keyword ( user given ) occurrences in all files.

path=$1
for i in ${path}*.*
do
	echo $i
	echo total no. of keyword occcurances
	cat $i |grep -c "print"
done
