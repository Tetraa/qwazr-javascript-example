<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Welcome to Qwazr</title>
    <!-- includes the common headers tag -->
    <#include "includes/head.ftl">
  </head>
  <body>
  
<!-- includes the navigation of the web site -->
<#include "includes/nav.ftl">

    <div class="container">

      <div style="padding: 40px 15px; text-align: center;">
        <h1>${message}</h1>
        <p class="lead">Use this document as a way to quickly start any new project.<br> Your session id is: ${session.id}.</p>
      </div>

    </div>
	
	<!-- includes the footer of the web site and common Javascript calls -->
	<#include "includes/foot.ftl">

  </body>
</html>
