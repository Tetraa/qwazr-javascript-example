var message;
var redirect;

// Check the request body
if (request.body != null) {
	login = request.body.parameter("login");
	password = request.body.parameter("password");
	if (login != null && password != null) {
		message = login + ' ' + password;
		var row = providers.cassandra.execute("SELECT * FROM authors WHERE user_name=? AND password = ?", login, password).one();
		redirect = request.getContextPath();
	}
}

// The content of message will be displayed
if (message  == null)
	message = "For this demo use admin/admin";
response.variable("message", message);

if (redirect != null)
	response.redirect(redirect);
else //Display the template, a path relative to the /view directory
	response.view("signin.ftl");