//providers.cassandra.select("select * from repos", 1);
response.variable("hello", "mesmateriaux");
response.variable("message", "Hello world!");
response.view("index.ftl");
