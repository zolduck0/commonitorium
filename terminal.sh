#!/bin/bash

echo "Are u still workin? :3"

read -p "-> " input

if [ "$input" == "y" ]; then
    echo "good boi!!!"
else
    echo "kill yourself"
fi

exec bash