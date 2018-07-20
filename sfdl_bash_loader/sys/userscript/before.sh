#!/bin/bash
#Sample für Automatisches umbennen der sfdl dateien zu Fomat:
#"Serie - S01E01 - Name der Folge.sfdl" und "Film name (JJJJ).sfdl"
#Der name wird dann benutzt um die Film Datei umzubennen wenn es online kein relase für kodi gibt
#Alles Zwischen Start und END muss auskommentiert werden.
#------SAMPLE-START------
#pwd="`dirname \"$0\"`"
#cd $pwd/../../sfdl
#rename 's/\.German(.*).sfdl$/.sfdl/i' *
#rename 's/[^(](\d{4,})/\($1\)/g' *
#rename 's/\.S(\d{2})E(\d{2})/ - S$1E$2 -/g' *
#rename 's/\./ /g' *
#rename 's/ sfdl/.sfdl/g' *
#------SAMPLE-END--------
