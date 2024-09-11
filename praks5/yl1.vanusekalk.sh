#!/bin/bash
# Vanuse kalkulaator sünniaasta põhjal
# skripti algus

read -p "Sisesta oma nimi: " nimi
echo "Tere tulemast, $nimi!"

read -p "Sisesta oma sünniaasta: " aasta
aastap=$(date +%Y)
vanus=$((aastap - aasta))
echo "$nimi, sa oled $vanus aastat vana"

# skripti lõpp
