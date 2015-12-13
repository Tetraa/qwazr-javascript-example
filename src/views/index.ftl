<html>
<head>
<#include 'includes/head.ftl'>
</head>
<body>

<#include 'includes/nav.ftl'>

<div class="container">
<#-- my_var has been set in the controller home.js -->
    <h2 class="text-center">${request.attributes.my_var}</h2>

<#include 'includes/message.ftl'>

</div>

<#include 'includes/footer.ftl'>

</body>
</html>