// We will use this class to insert an entry in MongoDB
load('src/js/model/collection_entries.js')

// We may use a function
go()

function go() {

    // First we have an empty entry
    var entry = {}

    // Check if we currently want to POST a new form
    if (request.method == 'POST') {

        // We build the JSON of our new entry
        var entry = {
            title: request.getParameter('title'),
            content: request.getParameter('content')
        }

        if (!entry.title) {
            request.attributes.message = 'The title is missing'
        } else {
            model_collection_entries.insert(entry)
            // The entry has been added, we redirect to the list
            response.redirect('/list')
            return
        }

    }

    // We give back the entry to the template
    request.attributes.entry = entry

    // Get the Freemarker object defined in tools.json
    var freemarker = request.attributes.tools.freemarker

    // Display the template
    freemarker.template("src/views/form.ftl", request, response);

}