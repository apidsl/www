# [www.apidsl.com](https://www.apidsl.com/)

## What is apidsl?

[bash.apidsl.com](https://bash.apidsl.com/) is a wrapper for bash scripts
There are two options of usage:
+ directly from command line such param of apidsl.sh script
+ run (example.txt) file script

+ [Examples of usage - examples.apidsl.com](http://examples.apidsl.com)
+ [Sourcecode - bash.apidsl.com](http://bash.apidsl.com)


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