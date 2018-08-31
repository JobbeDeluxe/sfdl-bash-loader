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
./start.sh "name derKattegorie"
zB.:
./start.sh film
```
Bitte Kategorien in sys/kategorie.cfg eintragen!
Es kann immer nur EINE Kattegorie pro Download angegeben werden. Alle sfdl im ordner werden dann mit dieser Kattegorie abgearbeitet.


## Kompatibilität (getestet)
-Linux  
-Raspberry Pi (Raspbian)  
-Windows 10 (Entwicklermodus + BASH)  
-macOS 10.X 

## Homepage
http://sfdl.net/bash-loader/

## Screenshot
![Vorschau](https://www1.xup.in/exec/ximg.php?fid=38443306)
