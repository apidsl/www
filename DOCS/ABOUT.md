
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
