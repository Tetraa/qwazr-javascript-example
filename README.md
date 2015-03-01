# Qwazr example

This is an instance of a website structure for [QWAZR](https://www.qwazr.com)

A typical website structure contains the following directories:
- [controller](controller): The controllers written in Javascript.
- [model](model): A set of CQL files managing the Cassandra database model.
- [view](view): The template files.
- [static](static): Contains the static files (css, javascript).

The default controller is called index.js located in the root of the controller directory.

## Configuration File

The global configuration file is called configuration.json. It contains the required initialization parameters.

On www.qwazr.com these parameters built a provider which create an instance to its Cassandra keyspace.

```json
{
	"providers": [
		{
			"name": "cassandra",
			"class": "com.opensearchserver.provider.CassandraProvider",
			"keyspaceLocator": {
				"keyspace": "qwazr_public",
				"cql": "select keyspace_name,user from repos where full_name=?"
			},
			"hosts": [
				"ssd001.qwazr.net",
				"ssd002.qwazr.net"
			]
		}
	]
}
```
