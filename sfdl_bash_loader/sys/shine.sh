#!/bin/bash

pwd="`dirname \"$0\"`"
source "$pwd/loader.cfg"
source "$pwd/kategorie.cfg"

if [ $kategorie == Film ]; then
	if [ $unterordner == false ]; then
		mv "$1" "$sfdl_downloads/$Film"
	fi
fi
