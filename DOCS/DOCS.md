
## Docs [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/www/edit/main/DOCS/DOCS.md)


### How it works?

skrypt **apidsl.sh** Parsuje skrypty zapisywane w formacie: funkcja("parametr") i uruchamia w shellu przygotowane skrypty odnoszące się do nazyw plików:
/apidsl/bash/*.sh

load -> /apidsl/bash/load.sh

load("plik.txt") -> ./apidsl/bash/load.sh "plik.txt"

The comments are removed
+ //
+ #

