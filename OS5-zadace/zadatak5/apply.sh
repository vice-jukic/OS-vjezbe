#!/bin/bash
if [ $# -ne 2 ]; then
	echo "2 argumenta su potrebna!"
	exit 1
fi

dozvole=$1
datoteka=$2

pretvori() {
	lokalni_dio=$1
	vrijednost=0

	[[ ${lokalni_dio:0:1} == "r" ]] && ((vrijednost+=4))
	[[ ${lokalni_dio:1:1} == "w" ]] && ((vrijednost+=2))
	[[ ${lokalni_dio:2:1} == "x" ]] && ((vrijednost+=1))

	echo $vrijednost
}

vlasnik=$(pretvori ${dozvole:0:3})
grupa=$(pretvori ${dozvole:3:3})
ostali=$(pretvori ${dozvole:6:3})

oktalno="$vlasnik$grupa$ostali"

chmod $oktalno "$datoteka"

echo "Dozvola: $oktalno"
