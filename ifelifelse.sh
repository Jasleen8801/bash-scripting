#!/bin/bash

if [ ${1,,} = jasleen ]; then
	echo "Oh, you;re the boss here. Welcome!"
elif [ ${1,,} = help ]; then
	echo "Just enter your username, duhh"
else 
	echo "I don't know who you are, but you're not the boss of me!!!"
fi
