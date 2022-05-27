![logo.apidsl.com](https://logo.apidsl.com/1/cover.png)

# [www.apidsl.com](https://bash.apidsl.com/) [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/www/edit/main/DOCS/MENU.md)

+ [Strona informacyjna: www.apidsl.com](https://www.apidsl.com/)
+ [Dokumentacja - docs.apidsl.com](https://docs.apidsl.com/)
+ [Logotyp: logo.apidsl.com](https://logo.apidsl.com/)
+ [Przykłady - examples.apidsl.com](http://examples.apidsl.com)

# www.apidsl.com

## What is apidsl?

[bash.apidsl.com](https://bash.apidsl.com/) is a wrapper for bash scripts
There are two options of usage:
+ directly from command line such param of apidsl.sh script
+ run (example.txt) file script

## Example 1 

Set **url** of Webpage and extract **title** tag to string and **save** in a file**

File: [**example1.txt**](example1.txt)
```apidsl
http("https://www.rezydent.de/")
.xpath("title")
.save("title.txt")
```

### run script from file

```bash
./apidsl.sh example1.txt
```

### run script in one line command

```bash
./apidsl.sh 'http("https://www.rezydent.de/").xpath("title").save("title.txt")'
```

## Example 2

Load many domains from file and save the title list to another file

```apidsl
load("domains.txt")
.split("/n")
.http()
.xpath("title")
.appendToFile("titles.txt")
```

### run script from file

```bash
./apidsl.sh example2.txt
```

### run script in one line command

```bash
./apidsl.sh 'load("domains.txt").split("/n").http().xpath("title").appendToFile("titles.txt")'
```