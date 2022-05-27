![logo.apidsl.com](https://logo.apidsl.com/2/cover.png)

# [www.apidsl.com](https://www.apidsl.com/)

+ How to improve your prototyping efficiency to produce live solutions in minutes?
+ How to make it without expensive tools with long term to learn?
+ How to bring your Development on the next level?

Get Started with Domain-Specific Languages

## What is DSL?


What can you do with a Domain-Specific Language?

A domain-specific language is a notation, designed to be used for a particular purpose. 
In a DSL, you can define the types of model element and their relationships.
When you have designed a DSL, you can distribute it as part of a Code with decentralised (on git repositoriess) packages. 
Users work with the DSL in command line or another tools depends, language.

## What is apiDSL?

[bash.apidsl.com](https://bash.apidsl.com/) is a wrapper for bash scripts to make own DSL

How to work with modern business domain with different languages and environments?
With apiDSL it's such easy, there are two options of usage:
+ directly from command line such param of apidsl.sh script
+ run (example.txt) file script

+ [Examples of usage - examples.apidsl.com](http://examples.apidsl.com)
+ [Sourcecode - bash.apidsl.com](http://bash.apidsl.com)


### Supported Languages:
+ js
+ php
+ bash
+ python


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

```bash
./apidsl.sh 'http("https://www.rezydent.de/").xpath("title").save("title.txt")'
```

## Example 2

Load many domains from file and save the title list to another file

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


# Tags

scripts 
language
