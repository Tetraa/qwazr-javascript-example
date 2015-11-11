var freemarker = request.attributes.tools.freemarker
request.attributes['my_var'] = 'Hello World ! Javascript controller'
freemarker.template("src/views/index.ftl", request, response);