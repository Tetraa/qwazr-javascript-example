     <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="http://www.qwazr.com/">Qwazr</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="${request.contextPath}">Home</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
    	   	<#if session.isAttribute("login")>
            	<li><a href="${request.contextPath}/signout">${session.getAttribute("login")} : log out</a></li>
   			<#else>
            	<li><a href="${request.contextPath}/signin">Sign In</a></li>
    		</#if>
         </ul>
        </div>
      </div>
    </nav>