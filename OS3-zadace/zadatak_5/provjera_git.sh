#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Potrebno je proslijediti 1 argument"
	exit 1
fi

PUTANJA="$1"

if [ ! -d "$PUTANJA" ]; then
	echo "Direktorij ne postoji"
	exit 1
fi

if [ ! -d "$PUTANJA/.git" ]; then
	echo "Direktorij nije git repozitorij"
	exit 1
fi

cd "$PUTANJA" || exit 1

touch repozitorij_info.txt

git add repozitorij_info.txt
git commit -m "Dodana datoteka repozitorij_info"
git log
