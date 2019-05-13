# !/bin/sh
sum=1
echo enter the num
read num
fun()
{
  while [ $num -gt 0 ]
  do
    sum=$sum * $num 
    num=$num - 1
  done
  echo $sum

}

r=$(fun)
echo $r
