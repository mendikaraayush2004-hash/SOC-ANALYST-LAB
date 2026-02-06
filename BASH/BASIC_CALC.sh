#!/bin/bash


echo "THIS IS A VERY BASIC CALCULATOR FOR A VERY NORMAL USE "

echo "Type in the numbers and type in the operator correctly when asked"

#this is  a very basic calc just to know how to register variables
#how to use the if loop  

read -p "Type in the first number : " NUM1

read -p "Type in the secomd number : " NUM2

echo  "Type in the operator you need to do"
echo " "+" for addition  "-" for substraction  "/"for division  "*" for multiplication "

read -p "Type the operator here: " OPT

if [ "$OPT" == "+" ]; then
	echo "the addition of two number is : $(( NUM1+NUM2 ))" 
elif [ "$OPT" == "-" ]; then
	echo "the substraction of two number is : $(( NUM1-NUM2 ))" 
elif [ "$OPT" == "/" ]; then
	echo "the division of two number is : $(( NUM1/NUM2 ))" 
elif [ "$OPT" == "*" ]; then
	echo "the multiplication of two number is : $(( NUM1*NUM2 ))" 
else 
	echo "Please select a appropriate operator"
fi


#you can use if loop for such cases where you provide multiple options and want to different operations
#for each of the option 
#space is mandatory in "[ ]" if loop 
