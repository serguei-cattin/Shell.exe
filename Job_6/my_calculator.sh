if [ "$2" = "x" ]
then
	somme=$(($1*$3))
	echo "$somme"
elif [ "$2" = "+" ]
then 
	somme=$(($1+$3))
	echo "$somme"
elif [ "$2" = "-" ]
then 
	somme=$(($1-$3))
	echo "$somme"
elif [ "$2" = "/" ]
then
	somme=$(($1/$3))
	echo "$somme"
else
 echo "Fin du programme"
fi
