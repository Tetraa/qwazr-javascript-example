var model_collection_entries = {

    /**
     * The name of the MongoDB database
     */
    database_name: 'qwazr_js_example',

    /**
     * The name of the collection
     */
    collection_name: 'entries',


    /**
     * Insert an entry in the collection
     * @param entry
     */
    insert: function (entry) {
        var collection = connectors.mongo.getCollection(this.database_name, this.collection_name)

        // Set the current Date
        entry.timestamp = new org.bson.types.BSONTimestamp((new Date().time) / 1000, 0);

        collection.insertOne(entry)
    },

    /**
     * Delete an entry
     * @param entry_id
     */
    delete: function (entry_id) {

        var collection = connectors.mongo.getCollection(this.database_name, this.collection_name)

        // Build the filter
        var filter = {

            // We use the Java MongoDB Driver
            _id: new org.bson.types.ObjectId(entry_id)
        }
    },

    /**
     * Get the entry list
     */
    get_list: function (limit) {
        var result_array = []

        // Read the collection
        var collection = connectors.mongo.getCollection(this.database_name, this.collection_name)
        var result = collection.find({timestamp: {$exists: true}});

        //  No result ? We return an empty array
        if (!result) return result_array

        // We build the list as an array
        result.limit(limit)
        for each(row in result) {
            var result = {
                _id: row._id.toString(),
                title: row.title,
                content: row.content,
                timestamp: row.timestamp.time * 1000
            }
            result_array.push(result)
        }

        return result_array
    }


}

