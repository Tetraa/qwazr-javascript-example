// We pu a new variable which will be used in our template
request.attributes.my_var = 'This test comes from the Javascript controller: ' + Math.ceil(Math.random() * 10)

// Get the Freemarker object defined in tools.json
var freemarker = request.attributes.tools.freemarker

// Display the template
freemarker.template("src/views/index.ftl", request, response);