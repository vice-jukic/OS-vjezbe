#!/bin/bash

for datoteka in old_dir/*; do
	mv "$datoteka" new_dir/
	echo "Datoteka prebacena"
	sleep 1
done
