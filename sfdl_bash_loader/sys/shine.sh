#!/bin/bash

source "$pwd/kategorie.cfg"
	tmdb_filmdatei="$(find "$sfdl_downloads/$name/" -type f | xargs -d '\n' ls -S | head -1)"
	film_extension="${tmdb_filmdatei##*.}"
	film_ganzefilm="${tmdb_filmdatei##*/}"
katname=kat_$kat

if [ $kategorie == true ]; then
	if [ $unterordner == false ]; then
		mv "$tmdb_filmdatei" "$sfdl_downloads/${!katname}/$film_ganzefilm"
		mv "$sfdl_downloads/$name/speedreport.txt" "$sfdl_downloads/"$name"_speedreport.txt"
		if [ $removeold == true ]; then			
			rm -dr $sfdl_downloads/$name
		fi
	else
		mv "$sfdl_downloads/$name" "$sfdl_downloads/${!katname}/$name"
	fi
fi
