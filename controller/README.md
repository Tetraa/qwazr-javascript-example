# Controllers

This directory contains the controllers written in Javascript.

The default controller is called index.js located in the root of each directory.
For instance, the URL http://www.qwazr.com/web/emmanuel-keller/qwarz-example/ will execute
the controller located in /qwazr-example/controller/index.js.

A simple controller which display a template located in the view directory.

```javascript
// Set the variable message.
response.variable("message", "Hello world!");
// Display the template 
response.view("index.ftl");
```
