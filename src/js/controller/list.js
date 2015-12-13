// We will use this class to get entries from MongoDB
load('src/js/model/collection_entries.js')

// Do you have any delete instruction ?
var delete_id = request.getParameter('delete')
if (delete_id)
    model_collection_entries.delete(delete_id)

// Retrieve the collection (limited to the first 100 rows)
request.attributes.entries = model_collection_entries.get_list(100)

// Get the Freemarker object defined in tools.json
var freemarker = request.attributes.tools.freemarker

// Display the template
freemarker.template("src/views/list.ftl", request, response);