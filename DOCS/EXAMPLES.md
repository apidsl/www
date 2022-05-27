
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
