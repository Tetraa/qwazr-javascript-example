QWAZR Javascript example
========================

This is an instance of a website structure for [QWAZR](https://www.qwazr.com)

A typical website structure contains the following directories:
- [controllers](src/js/controller): The controllers written in Javascript,
- [model](src/js/model): The classes managing your data (MongoDB in this case),
- [views](src/views): The template files (freemarker in this case),
- [static](src/static): Contains the static files (css, javascript).

The default controller is called home.js located in the root of the controller directory.

The following files defines the application:
- [connectors.json](connectors.json): Defines connectors (like database connection pools) available in the controller,
- [tools.json](tools.json): Defines singleton objects available in the controllers,
- [webapps/ROOT.json][webapps/ROOT.json]: Defines the mapping between URLs and controllers and static files.

Deploy in minutes
-----------------

### 1. Be sure you have JAVA 8 installed:

- http://openjdk.java.net/install/
- https://docs.oracle.com/javase/8/docs/technotes/guides/install/install_overview.html

### 2. A MongoDB instance is required

This tutorial will connect to an existing local MongoDB server.
You can change the connections parameters in the file connectors.json.
The tutorial will create a database called "qwazr_js_example" and fill a collection called "entries".

If you need to install MongoDB, here is the [installation documentation](https://docs.mongodb.org/v3.0/installation/).

### 3. Clone this repository:

If you use GIT you can use the usual git command:

```shell
git clone https://github.com/qwazr/qwazr-javascript-example.git
```

You may also [download the zipped version](https://github.com/qwazr/qwazr-javascript-example/archive/master.zip).

### 4. Get the latest QWAZR executable jar:

Download the executable jar library and put it in the root of the repository.

The latest nightly build is here: [download.qwazr.com](http://download.qwazr.com/latest)

The name of the file is: [qwazr-server-1.0.0-SNAPSHOT-exec.jar](http://download.qwazr.com/latest/qwazr-server-1.0.0-SNAPSHOT-exec.jar)

### 5. Start the server

Move to your repository and start the server:

java -Dfile.encoding=UTF-8 qwazr-server-1.0.0-SNAPSHOT-exec.jar

### 6. Welcome to QWAZR !

You can now see your application running:

http://localhost:9090