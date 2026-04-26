#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Potrebno je proslijediti 1 argument!"
	exit 1
fi

DIR="$1"
PUTANJA=$(dirname "$0")

if [ ! -d "$PUTANJA/$DIR" ]; then
	echo "Direktorij ne postoji"
	exit 1
fi

cd "$PUTANJA"

zip svi_zapisi.zip "$DIR"/*

echo "Gotovo"
