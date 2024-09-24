#!/bin/bash

# kataloogi sisu kuvamine

# skripti algus

read -p "Sisestage kataloogi nimi: " kl

find "$kl/" -print0 | while IFS= read -d '' item; do
	if [ -f "$item" ]; then
		echo "$(basename "$item"): fail"
		failid=$((failid + 1))
	elif [ -d "$item" ]; then
		echo "$(basename "$item"): kataloog"
		lingid=$((lingid + 1))
 	elif [ -L "$item" ]; then
		echo "$(basename "$item"): list"
		kataloogid=$((kataloogid + 1))
	else
		echo "$(basename "$item"): tundmatu"
	fi
done
echo "Kokku on $failid faili, $kataloogid kataloogi ja $lingid linki."
# skripti lõpp
