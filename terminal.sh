#!/bin/bash

echo "Are u still workin? :3"

read -p "-> " input

if [ "$input" == "shut up" ]; then
    echo "terminating this shit!!!!!!!!!!!"
    kill $PPID
    exit 0
elif [ "$input" == "y" ]; then
    echo "good boi!!!"
    exit 0
else
    echo "kill yourself"
    exec bash
fi