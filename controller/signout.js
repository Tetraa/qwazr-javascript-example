//We invalidate the session
session.invalidate();

//We redirect to the homepage
response.redirect(request.getContextPath());