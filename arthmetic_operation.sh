v1=10
v2=20
total=`expr $v1 + $v2`
echo "total : $total"

mul=`expr $v1 \* $v2`
echo "mul : $mul"

div=`expr $v1 / $v2`
echo "div : $div"

sub=`expr $v1 - $v2`
echo "sub : $sub"

mod=`expr $v1 % $v2`
echo "mod : $mod"

v1=$v2
echo v1 : $v1
