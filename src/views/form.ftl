<html>
<head>
<#include 'includes/head.ftl'>
</head>
<body>

<#include 'includes/nav.ftl'>

<div class="container">

    <h2 class="text-center">Creating a new entry</h2>

<#include 'includes/message.ftl'>

<#-- Our form -->
    <form method="post">

        <div class="form-group">
            <label>Title</label>
            <input class="form-control" name="title" value="${request.attributes.entry.title!?html}"/>
        </div>

        <div class="form-group">
            <label>Content</label>
            <textarea class="form-control" cols="50" rows="10"
                      name="content">${request.attributes.entry.content!?html}</textarea>
        </div>

        <div class="form-group text-center">
            <button class="btn btn-primary" type="submit">Enter a new entry in MongoDB</button>
        </div>

    </form>

</div>

<#include 'includes/footer.ftl'>

</body>
</html>