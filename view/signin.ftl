<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Welcome to Qwazr - Signin</title>
    <!-- includes the common headers tag -->
    <#include "includes/head.ftl">
    <link href="${request.contextPath}/css/signin.css" rel="stylesheet">
  </head>
  <body>
  
<!-- includes the navigation of the web site -->
<#include "includes/nav.ftl">

    <div class="container">

	  <!-- The login form -->
      <form class="form-signin" method="POST">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Login</label>
        <input type="text" id="inputEmail" name="login" class="form-control" placeholder="Login" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
        <p class="text-center">${message}</p>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->
	
	<!-- includes the footer of the web site and common Javascript calls -->
	<#include "includes/foot.ftl">

  </body>
</html>
