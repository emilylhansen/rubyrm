# RubyRM
RubyRM is a custom object relational database library that creates and maps Ruby objects to tables in the database. RubyRM abstracts away complicated SQL queries and provides a simple and intuitive interface for users to effectively interact with the database.

## Demo

To see this library in action, follow these steps:

* Clone this repository
* Load `irb` or `pry` in the terminal
* Run `load 'demo.rb'`
* Test it out!

For your reference, here are the tables in the demo database:

### Motto

|Column|Data Type|Details|
|------|---------|-------|
|id	   |integer	 |not null, primary key|
|name	 |string	 |not null|

### House

|Column|Data Type|Details|
|------|---------|-------|
|id	   |integer	 |not null, primary key|
|name	 |string	 |not null|
|motto_id|integer|       |

### Member

|Column|Data Type|Details|
|------|---------|-------|
|id	   |integer	 |not null, primary key
|fname |string	 |not null
|lname |string   |not null
|house_id|integer	|      |

## Use in Private Projects

Want to use this library for your own database? Follow these steps:

* Download the contents of the lib folder
* Change demo.sql file to your own SQLite3 table file in db_connection.rb
* Replace demo.db with what you want your database file name to be in db_connection.rb
* Start making models!

## Libraries

* SQLite3 (gem)
* ActiveSupport::Inflector

## List of Features

* Defines getter and setter methods for all columns in a table, allowing easy access to data
* Has custom "tableize" method to turn model names into table names

## RubyRM Methods

* `all` - returns a RubyRM object for each and every row within the object's table in the database
* `first` - returns first/oldest row inserted into a table
* `last` - returns row most recently inserted into a table
* `find(id)` - allows easy querying of rows via an id key; returns a RubyRM object with the given id
* `where(params)` - takes a hash as an argument and returns an array of RubyRM objects that match the key/value pairs given.
* `insert` - inserts a new row into the database with the RubyRM object's attributes
* `update` - updates the database with the RubyRM object's current attributes
* `save` - inserts or updates the database with the RubyRM object's current attributes
* `belongs_to(name, options)` - creates an association between two tables, where the current model class holds the foreign key referencing the other table
* `has_many(name, options)` - creates an association between two tables, where the other model class holds the foreign key pointing to the current model's table
* `has_one_through(name, through_name, source_name)` - creates an association between two tables (current model class table and source table), with an intermediary table (through) joining the two tables (traverses through two belongs_to assocations)
