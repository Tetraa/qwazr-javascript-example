<#-- If there is a message we display it -->
<#if request.attributes.message??>
<div class="alert alert-warning alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
            aria-hidden="true">&times;</span></button>
${request.attributes.message}</div>
</#if>