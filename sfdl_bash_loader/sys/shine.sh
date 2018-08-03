#!/bin/bash

pwd="`dirname \"$0\"`"
source "$pwd/kategorie.cfg"
if [ -z "$tmdb_filmdatei" ]; then
	tmdb_filmdatei="$(find "$sfdl_downloads/$name/" -type f | xargs -d '\n' ls -S | head -1)"
	film_extension="${tmdb_filmdatei##*.}"
	film_ganzefilm="${tmdb_filmdatei##*/}"
	else
	tmdb_filmdatei="$sfdl_downloads/$name/$dateiname.$film_extension"
fi
if [ $kategorie == true ]; then
	if [ $kat == "film" ]; then
		if [ $unterordner == false ]; then
			mv "$tmdb_filmdatei" "$sfdl_downloads/$Film/$film_ganzefilm" ###der name stimmt noch nicht... neue datei suche??
			mv "$sfdl_downloads/$name/speedreport.txt" "$sfdl_downloads/"$name"_speedreport.txt"
			if [ $removeold == true ]; then			
				rm -dr $sfdl_downloads/$name
			fi
		else
			mv "$sfdl_downloads/$name" "$sfdl_downloads/$Film/$name"
		fi
	fi
fi
