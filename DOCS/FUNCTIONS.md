
## FUNCTIONS [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/www/edit/main/DOCS/FUNCTIONS.md)

Przykładowe funkcje

### load()

Funkcja **load()** pobiera wejściowy parametr nazwy pliku i wyświetla zawartośc dla kolejnych funkcji

```bash
#!/bin/bash
FILENAME=$1
[ -z "$FILENAME" ] && IFS='' read -d '' -r FILENAME
[ ! -z "$FILENAME" ] && cat $FILENAME
```

### save()

Funkcja **save()** pobiera wejściowe dane i parametry
zapisuje zawartość strumienia w nazwie pliku podanego w parametrze funkcji.

```bash
#!/bin/bash
[ -t 0 ] && echo "stdin File Content is empty" && exit
IFS='' read -d '' -r CONTENT
[ -z "$1" ] && echo "FILENAME is empty" && exit
FILENAME=$1
PATH_FILE="./${FILENAME}"
( [ -e "${PATH_FILE}" ] || touch "${PATH_FILE}" ) && [ ! -w "${PATH_FILE}" ] && echo "CONTENT can not be written to FILE: ${PATH_FILE}" && exit
echo "${CONTENT}" > "${PATH_FILE}"
```
