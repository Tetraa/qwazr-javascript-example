<html>
<head>
<#include 'includes/head.ftl'>
</head>
<body>

<#include 'includes/nav.ftl'>

<div class="container">

    <h2 class="text-center">Entries</h2>

<#include 'includes/message.ftl'>

    <br/>

<#-- Do we have any entry ? -->
<#if request.attributes.entries?size gt 0>

    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <tr>
                <th>ID</th>
                <th>Timestamp</th>
                <th>Title</th>
                <th>Action</th>
            </tr>

        <#-- The entry loop -->
            <#assign array_keys = request.attributes.entries?keys>
            <#list array_keys as array_key>
                <#assign entry = request.attributes.entries[array_key]>
                <tr>
                    <td>${entry._id!}</td>
                    <td>${(entry.timestamp!0)?number_to_datetime}</td>
                    <td>${entry.title!}</td>
                    <td>
                        <a href="?delete=${entry._id}" class="btn btn-xs btn-danger">Delete</a>
                    </td>
                </tr>
            </#list>

        </table>
    </div>

<#else>
<#-- No entry ? Let's display a link -->
    <p class="text-center">No entry yet. <a href="${request.contextPath}/form">Please enter a new one</a></p>
</#if>

</div>

<#include 'includes/footer.ftl'>

</body>
</html>