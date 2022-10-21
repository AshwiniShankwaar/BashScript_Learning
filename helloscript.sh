#! /bin/bash
: '
cat <<hello
code while learning
hello

echo "hello">test.txt
echo "second hello">>test.txt
count=9
if [ $count -eq 10 ]
then
    echo "equal"
else
    echo "not equal"
fi

count=9
if [ $count -gt 10 ]
then
    echo "greater"
else
    echo "not greater"
fi
#we can write the above code in following  form
if (( $count > 9 ))
then 
    echo "greater"
else
    echo "not greater"
fi
#if-elif
if (( $count < 10 ))
then 
    echo "smaller"
elif (($count >= 10 ))
then 
    echo "greater then "
else
   echo "not equal"
fi
#and operator
age=10
if [ $age -gt 18 ] && [ $age -lt 40 ]
then
    echo "not allowed"
else
    echo "allowed"
fi
#other way
if [ $age -gt 18 -a $age -lt 40 ]
then
    echo "not allowed"
else
    echo "allowed"
fi
#other way
if [[ $age -gt 18 && $age -lt 40 ]]
then
    echo "not allowed"
else
    echo "allowed"
fi

#other way

if (( $age < 18 )) && (( $age > 40 ))
then
    echo "not allowed"
else
    echo "allowed"
fi

#or operator
if [ $age -gt 18 ] || [ $age -lt 40 ]
then
    echo "check"
else
    echo "not chceck"
fi
#other way
if [ $age -gt 18 -o $age -lt 40 ]
then
    echo "check"
else
    echo "not chceck"
fi
#other way
if [[ $age -gt 18 || $age -lt 40 ]]
then
    echo "check"
else
    echo "not chceck"
fi

#other way

if (( $age < 18 )) || (( $age > 40 ))
then
    echo "check"
else
    echo "not chceck"
fi

#case statement
car="BMW"
case $car in  
  "BMW" )
     echo "it's BMW" ;;
   "HONDA")
     echo "it's HONDA" ;;
     *)
     echo "unknown car name";;
esac
#loop
#while loop
number=1
while (( $number <= 10 ))
do
   echo "$number"
   number=$((number+1))
done
number=1

while [ $number -le 10 ] 
do
   echo "$number"
   number=$((number+1))
done

#untill loop
until [ $number -ge 20 ]
do
   echo "$number"
   number=$((number+1))
done
# for loop
for i in {0..20..2}#{start..end..increment}
do 
   echo $i
done

#other way 
for (( i = 0; i<5; i++ ))
do 
echo "$i"
done

#script input
#echo $1 $2 $3
#echo $0 $1 $2 $3
# 0 ith argument is fixed got the filename where as 1 2 and 3 are a input 
#example ./file.sh a b c
# for echo $1 $2 $3 it will print a b c
# for echo $0 $1 $2 $3 it will print file.sh a b c

#array input
args=("$@")
#for this line there are no limit for the input if we want to set a limit
#args=("$@3")
echo ${args[0]} ${args[1]} ${args[2]}

 ls -al 1>>out.txt 2>>test.txt'
 
