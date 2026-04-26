#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Potrebno je proslijediti dva argumenta!"
	exit 1
fi

DIR="$1"
EKST="$2"

if [ ! -d "$DIR" ]; then
	echo "Direktorij ne postoji!"
	exit 1
fi

PRONADENO=0

for datoteka in "$DIR"/*; do
	if [ -f "$datoteka" ]; then
		if [[ "$datoteka" == *"$EKST" ]]; then
			basename "$datoteka"
			PRONADENO=1
		fi
	fi
done

if [ "$PRONADENO" -eq 0 ]; then
	echo "Nema datoteka s nastavkom $EKST"
fi
