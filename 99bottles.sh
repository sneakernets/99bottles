#!/bin/bash

for (( i=99; i>=1; i))
do
if [[ "$i" == 1 ]]
then say "$i bottle of beer on the wall, $i bottle of beer! Take one down, pass it around,"
else say "$i bottles of beer on the wall, $i bottles of beer! Take one down, pass it around,"
fi
let "i-=1"
if [[ "$i" == 1 ]]
then say "$i bottle of beer on the wall!"
else say "$i bottles of beer on the wall!"
fi
done
