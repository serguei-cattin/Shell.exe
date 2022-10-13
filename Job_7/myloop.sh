#!/bin/bash

i=1;

while [[ "$i" -le "10" ]]
 do
  echo "Je suis un script qui arrive à faire une boucle $i"
  ((i++));
done

exit 0

