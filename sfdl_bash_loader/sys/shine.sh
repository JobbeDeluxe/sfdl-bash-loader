#!/bin/bash

source "$pwd/kategorie.cfg"
	tmdb_filmdatei="$(find "$sfdl_downloads/$name/" -type f | xargs -d '\n' ls -S | head -1)"
	film_extension="${tmdb_filmdatei##*.}"
	film_ganzefilm="${tmdb_filmdatei##*/}"
katname=kat_$kat
if [ -z ${!katname} ]; then
	echo "Kategorie nicht gefunden, bitte in der $pwd/kategorie.cfg anlegen nutze stattdessen \"film\""
	katname=kat_film
fi
if [ $kategorie == true ]; then
	mkdir -p "$sfdl_downloads/${!katname}"
	echo "Kategorie $kat wird genommen und in den Ordner ${!katname} verschoben"
	if [ $unterordner == false ]; then
		mkdir -p "$sfdl_downloads/Speedreports"
		echo "Verschiebe Film...."
		mv "$tmdb_filmdatei" "$sfdl_downloads/${!katname}/$film_ganzefilm"
		mv "$sfdl_downloads/$name/speedreport.txt" "$sfdl_downloads/Speedreports/"$name"_speedreport.txt"
			if [ -d "$sfdl_downloads/$name/kodi" ] && [ kodi_behalten == true ]; then
				mv "$sfdl_downloads/$name/kodi" "$sfdl_downloads/${!katname}/kodi_$film_ganzefilm"
			fi
		if [ $removeold == true ]; then	
			echo "Entferne alten Ordner...."		
			rm -dr $sfdl_downloads/$name
		fi
	else
		mv "$sfdl_downloads/$name" "$sfdl_downloads/${!katname}/$name"
	fi
fi
echo "Film Verschoben: $sfdl_downloads/${!katname}/$film_ganzefilm"
