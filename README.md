
![logo.apidsl.com](https://logo.apidsl.com/4/cover.png)

# [www.apidsl.com](https://www.apidsl.com/) [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/www/edit/main/DOCS/MENU.md)

+ How to improve your prototyping efficiency to produce live solutions in minutes?
+ How to make it without expensive tools with long term learn curve?
+ How to bring your Development on the next level?

Get Started with Domain-Specific Languages

# [Sourcecode - bash.apidsl.com](https://bash.apidsl.com/) [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/bash/edit/main/DOCS/MENU.md)
+ [Examples - examples.apidsl.com](http://examples.apidsl.com)
+ [Documentation - docs.apidsl.com](https://docs.apidsl.com/)
+ [Logotyp: logo.apidsl.com](https://logo.apidsl.com/)


## About apidsl [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/www/edit/main/DOCS/ABOUT.md)

I did last time some wrapper for bash, python, ... with such format: **load("domains.txt")**
I am using it to build multiplatform scripts, where the same sentence will be executed on PHP, Python, JS, ...

### The Inspiration was coming from such projects:

+ [jQuery, DOM Traversal and Manipulation](https://jquery.com/)
+ [Apache Camel uses a Java Domain Specific Language or DSL for creating Enterprise Integration Patterns or Routes in a variety of domain-specific languages (DSL)](https://camel.apache.org/manual/dsl.html)


### What is DSL?


What can you do with a Domain-Specific Language?

A domain-specific language is a notation, designed to be used for a particular purpose.
In a DSL, you can define the types of model element and their relationships.
When you have designed a DSL, you can distribute it as part of a Code with decentralised (on git repositoriess) packages.
Users work with the DSL in command line or another tools depends, language.

### What is apiDSL?

[bash.apidsl.com](https://bash.apidsl.com/) is a wrapper for bash scripts to make own DSL

How to work with modern business domain with different languages and environments?
With apiDSL it's such easy, there are two options of usage:
+ directly from command line such param of apidsl.sh script
+ run (example.txt) file script

+ [Examples of usage - examples.apidsl.com](http://examples.apidsl.com)
+ [Sourcecode - bash.apidsl.com](http://bash.apidsl.com)


### Benefits

+ universal format regardless of the environment
+ using libraries and using only selected functions
+ launching services available in the local environment
+ running APIs available externally
+ possibility to change permissions for each script depending on the user
+ the ability to add your own functions


## How it works? [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/bash/edit/main/DOCS/HOW.md)


skrypt **apidsl.sh** Parsuje skrypty zapisywane w formacie: **funkcja("parametr")** i uruchamia w shellu przygotowane skrypty odnosz??ce si?? do nazyw plik??w:

/apidsl/bash/*.sh

**load** -> /apidsl/bash/**load.sh**

load(**"plik.txt"**) -> ./apidsl/bash/load.sh **"plik.txt"**

The lines with comments such: "**//**" , "**#**" are removed.



### Zale??no??ci 
Mapowanie projekt??w z git

??adowane z repozytori??w git, jak github, gitlab, bitbucket
+ zamiast xpath - ??adowanie zalezno??ci przez skrypt github
+ letPath - przygotowa??
  https://github.com/letpath/bash


## Layers [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/www/edit/main/DOCS/LAYERS.md)


A domain-specific language is a notation, designed to be used for a particular purpose.
In a DSL, you can define the types of model element and their relationships.
When you have designed a DSL, you can distribute it as part of a Code with decentralised (on git repositoriess) packages.
Users work with the DSL in command line or another tools depends, language.

### Environment

+ OS System

Universal format regardless of the environment

### Programming language

USAGE in terminal or another platform language, e.g.

+ apidsl **.sh**
+ apidsl **.php**
+ apidsl **.js**
+ apidsl **.py**


With apiDSL it's such easy, there are two options of usage:
+ directly from command line such param of apidsl.*  **.sh .py .js .php** script
+ run **example.txt** file script with apidsl.*  **.sh .py .js .php** script

### Functions

+ the ability to add your own functions


### Libraries

+ using libraries and using only selected functions
+ launching services available in the local environment
 
### API

+ running APIs available externally




## LIBRARY [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/www/edit/main/DOCS/LIBRARY.md)


## FUNCTIONS [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/www/edit/main/DOCS/FUNCTIONS.md)

Przyk??adowe funkcje

### load()

Funkcja **load()** pobiera wej??ciowy parametr nazwy pliku i wy??wietla zawarto??c dla kolejnych funkcji

```bash
#!/bin/bash
FILENAME=$1
[ -z "$FILENAME" ] && IFS='' read -d '' -r FILENAME
[ ! -z "$FILENAME" ] && cat $FILENAME
```

### save()

Funkcja **save()** pobiera wej??ciowe dane i parametry
zapisuje zawarto???? strumienia w nazwie pliku podanego w parametrze funkcji.

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


## EXAMPLES [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/www/edit/main/DOCS/EXAMPLES.md)

## Example 1

Set **url** of Webpage and extract **title** tag to string and **save** in a file**

File: [**example1.txt**](example1.txt)
```js
http("https://www.rezydent.de/")
.xpath("title")
.save("title.txt");
```

### run script from file

```bash
./apidsl.sh example1.txt
```

### run script in one line command

```shell
./apidsl.sh 'http("https://www.rezydent.de/").xpath("title").save("title.txt")'
```

## Example 2

Load many **domains** from a file, download **webpage** html file, extract **title** tag from html, save to another the **list of title**

File: [**example2.txt**](example2.txt)

```js
load("domains.txt")
.split("/n")
.http()
.xpath("title")
.appendToFile("titles.txt");
```

### run script from file

```bash
./apidsl.sh example2.txt
```

### run script in one line command

```bash
./apidsl.sh 'load("domains.txt").split("/n").http().xpath("title").appendToFile("titles.txt")'
```


## Example 3

Load file **path** from a file: [**path.txt**](path.txt), show **file** from the **path** 
On the end we see not the content from [**path.txt**](path.txt) file, but content from pathwhich was inside the file and is loaded through the second function.

File: [**example3.txt**](example3.txt)

```js
load("path.txt").load()
```

### run script from file

```bash
./apidsl.sh example3.txt
```

### run script in one line command

```bash
./apidsl.sh 'load("path.txt").load()'
```


## TODO [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/bash/edit/main/DOCS/TODO.md)

### Mapowanie

skrypty zapisywa?? w folderze g????wnym

zamiast w folderach, kazdy skrypt z kropkami
je??li piszemy 

letwhois.ns()
plik:
letwhois.ns.sh

kazda funkcja jest przepisywana ??eby mie?? do niej dost??p z jednego poziomu bez przechodzenia po folderach

uproszcenie zarz??dzania i wyswietlanie listy plik??w

ka??da funkcja i tak musi dzia??a?? autopnimicznie

skrypt instaluj??cy kopiuje wszystkie skrypty bezposrednio

https://github.com/letwhois/bash apidsl/apidsl/bash letwhois

apidsl/apidsl/bash/letwhois/reverseIp.sh 

repozytiorium
https://github.com/letwhois/bash

mapa funkcji
apidsl/apidsl/bash/letwhois/reverseIp.sh reverseIp

1. pobiera cale repo
https://github.com/letwhois/bash

2. wyodrebnia poprzez mapowanie
domainIp.sh domainIp
domainIp.sh letwhois.domainIp






#### mapowanie funkcji z linuxa:
curl().grep("ri",)

#### mapowanie funckji uslug w linux

#### mapowanie API
+ Sk??d pobiera?? dane autoryzacyjne?
 


### Praktyczne przyk??ady
+ Example with plainedit
+ more loop options
+ many loop in one sentence

install
https://github.com/apidsl/ultimate-nmap-parser


### Inframonit

skanuje hosty
git clone https://github.com/desecsecurity/parsing_html_bash
./parsing_html.sh www.google.com


+ skrypty do detekcji
+ skrypty do naprawy
+ schematy naprawy / template w zalezno??ci od sytuacji



http.get("https://web.com")

$('#cliente').click(function(){$('#container').load('/clienti/cliente.html');});

js.
import("https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js")
.get("https://web.com")
.xpath("title")
.print()


js.
console.log("clone")
jquery.get("simpleargs")
.nano("filename.txt","content")
.git("commit","-m","nowy plik")
.git("push");




### Preprocessing

Ka??dy z tych jest w fodlerze ze skryptami, gdzie kolejno podaje sie wartosci
+ values
+ context - before, next command



# Tags

+ scripts
+ language
+ Domain-Specific Languages

---

+ [edit](https://github.com/apidsl/www/edit/main/README.md)
+ [apidsl/www](https://github.com/apidsl/www)
