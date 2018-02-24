#!/bin/bash

echo "Insert an Integer"

read input

if ! [[ "$input" =~ ^[0-9]+$ ]] ; then
   exec >&2; echo "Error: You didn't enter an integer"; exit 1
fi

function factorial
{
while [ "$input" != 1 ];
do
    result=$(($result * $input))
    input=$(($input-1))
done
}
factorial
echo "The Factorial of " $input "is" $result
