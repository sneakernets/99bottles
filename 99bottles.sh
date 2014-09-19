#!/bin/bash

sing_99bottles () {

	if [ "$1" == "OSX" ];
		then
		for (( i=99; i>=1; i))
		do
			if [ "$i" == 1 ];
				then say "$i bottle of beer on the wall, $i bottle of beer! Take one down, pass it around,"
				else say "$i bottles of beer on the wall, $i bottles of beer! Take one down, pass it around,"
			fi
			let "i-=1"
			if [ "$i" == 1 ];
				then say "$i bottle of beer on the wall!"
				else say "$i bottles of beer on the wall!"
			fi
		done
	elif [ "$1" == "LINUX" ];
		then
		for (( i=99; i>=1; i))
		do
			if [ "$i" == 1 ];
				then echo "$i bottle of beer on the wall, $i bottle of beer! Take one down, pass it around,"|espeak
				else echo "$i bottles of beer on the wall, $i bottles of beer! Take one down, pass it around,"|espeak
			fi
			let "i-=1"
			if [ "$i" == 1 ];
				then echo "$i bottle of beer on the wall!"|espeak
				else echo "$i bottles of beer on the wall!"|espeak
			fi
		done
	fi 

}

case "$OSTYPE" in
  solaris*) echo "SOLARIS" ;;
  darwin*)  sing_99bottles 'OSX' ;; 
  linux*)   sing_99bottles 'LINUX' ;;
  bsd*)     echo "BSD" ;;
  *)        echo "unknown: $OSTYPE" ;;
esac