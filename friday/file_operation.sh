# !/bin/sh
echo enter file name
read file
echo welcome to shell scriptingi >$file
cat $file
echo back to shell scripting >>$file
cat $file
echo  data printing using while loop
while read line
do
  echo $line| grep "shell" >> file4.txt
 
done< file1.txt


