login = request.getParameter("login");
password = request.getParameter("password");
if (login != null && password != null) {
	message = "AUTH";
} else {
	message = "For this demo uses admin/admin";
}
response.addVariable("message", message);
response.view("signin.ftl");