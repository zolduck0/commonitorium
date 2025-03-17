#!/bin/bash

echo "Are you still working?"

read -p "-> " input

if [ "$input" == "shut up" ]; then
    echo "Terminating..."
    kill $PPID
    exit 0
elif [ "$input" == "y" ]; then
    echo "Good job!"
    exit 0
else
    echo "Don't give up! Try again."
    exec bash
fi