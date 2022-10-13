#!/bin/sh

if [ "$1" = "Hello" ]
then
	printf "Bonjour, je suis un script!"

elif [ "$1" = "Bye" ]
then
	printf "Au revoir et bonne journée"
else
	return 0;

fi
