var authors = providers.cassandra.execute("select * from authors", 1);
response.variable("authors", authors);
response.variable("message", "Hello world!");
response.view("index.ftl");
