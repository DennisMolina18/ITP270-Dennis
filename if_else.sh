#!/bin/bash

#Print a message to the user "Is it raining?"
echo "Is it raining?[Y/N]"

#store the user input inside of a variable named IS_RAIN
read IS_RAIN

#Start the if-else block to check if it's raining or not 
if [ $IS_RAIN == "Y" ] || [ $IS_RAIN == "y" ]
then
  echo "Stay at home!"
elif [ $IS_RAIN == "N" ] || [ $IS_RAIN == "n" ]
then
  echo "Go out!"
else
  echo "Invalid output!"
fi
