#!/bin/bash

BROJAC=1

for datoteka in screenshots/*; do
	if [ -f "$datoteka" ]; then
		ime=$(basename "$datoteka")
		novo_ime="screenshots/screenshots_${BROJAC}_${ime}"
		mv "$datoteka" "$novo_ime"
		echo "$(basename "$novo_ime")"
		((BROJAC++))
	fi
done
