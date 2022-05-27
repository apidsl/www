
## Docs [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/www/edit/main/DOCS/DOCS.md)


### Co robi apidsl?

Parsuje skrypty zapisywane w formacie: funkcja("parametr") i uruchamia w shellu

### Parsowanie

Parsowanie następuje na dwie zmienne:

key: funkcja
value: parametr

W rezultacie zmiast pisać:

    grep -ri "$FIND" "$WHOIS_FILE"

piszemy:

    grep("ri","$FIND", "$WHOIS_FILE").print()

The comments are removed
+ //
+ #

