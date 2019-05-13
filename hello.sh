#!/bin/sh
echo "enter your name"
read name
echo "my name is $name"
VAR1="my name is khan"
Var2="where re u from"
echo  "$VAR1 \n$Var2"
var=10;
#unset var
echo $var

echo "file Name : $0"
echo "first Parameter : $1"
echo "Second Paramerte : $2"
echo "Quoted Value : $@"
echo "Quoted Value : $*"
echo "Total npo. of variable : $#"

