# !/bin/sh
echo enter the num
read num
var1=0
var2=1
var3=0
for (( i=0 ;i<num ; i=i+1 ))
do
  echo $var1
  var3=`expr $var1 + $var2`
  var1=$var2
  var2=$var3
done

