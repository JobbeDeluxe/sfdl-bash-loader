# SFDL Bash Loader

Zum einfachen herunterladen mit SFDL Dateien unter Linux und Mac

## Installation

```
wget https://raw.githubusercontent.com/JobbeDeluxe/sfdl-bash-loader/master/sfdl_bash_loader/update.sh -v -O update.sh && chmod +x ./update.sh && ./update.sh install; rm -rf update.sh
```

#### Alternativ:
Auspacken: 
```
unzip sfdl-bash-loader-X.X.zip
```
Ins Verzeichnis wechseln: 
```
cd sfdl-bash-loader-X.X/sfdl_bash_loader  
```

Rechte vergeben: 
```
sudo chmod +x ./start.sh 
```

## Starten
Download starten: 
```
./start.sh
```
## Starten mit Kategorie
```
./start.sh "name der Kategorie"
zB.:
./start.sh film
```
Bitte Kategorien in sys/kategorie.cfg eintragen!
Es kann immer nur EINE Kategorie pro Download angegeben werden. Alle sfdl im ordner werden dann mit dieser Kategorie abgearbeitet.

Es wird beim start mit einer Kategorie eine neue loader.cfg datei angelegt mit "katname_" davor. Diese kann mit allen einstellungen aus der normalen loader datei gefüllt werden. Diese werden dann Vorrangig benutzt. Beachte das die einstellungen der original loader.cfg damit überschrieben werden.

Es wird auch eine "katname_"kategorie.cfg angelegt. Diese muss Komplettausgefüllt sein da sie für die eingegebene kategorie genutzt wird. Wichtig ist der Pfad der kategorie. Dieser muss nur für die genutzte kat verfügbar sein


## Kompatibilität (getestet)
-Linux  
-Raspberry Pi (Raspbian)  
-Windows 10 (Entwicklermodus + BASH)  
-macOS 10.X 

## Homepage
http://sfdl.net/bash-loader/

## Screenshot
![Vorschau](https://www1.xup.in/exec/ximg.php?fid=38443306)
