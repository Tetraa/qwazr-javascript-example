// This is an API, we will return JSON
response.contentType = 'application/json'

// We will use this class to get entries from MongoDB
load('src/js/model/collection_entries.js')

// We get the limit from the limit parameter
var limit = Number(request.getParameter('limit'))
if (limit == 0) limit = 100 // Default value is 100

// Get the entries from MongoDB
var entries = model_collection_entries.get_list(limit)

// We return response
response.writer.print(JSON.stringify(entries))