#!/bin/bash

# kataloogi sisu kuvamine

# skripti algus

read -p "Sisestage kataloogi nimi: " kl

find "$kl/" -print0 | while IFS= read -d '' item; do
	if [ -f "$item" ]; then
		echo "$(basename "$item"): fail"
	elif [ -d "$item" ]; then
		echo "$(basename "$item"): kataloog"
 	elif [ -L "$item" ]; then
		echo "$(basename "$item"): list"
	else
		echo "$(basename "$item"): tundmatu"
	fi
done

# skripti lõpp
