# RubyRM – Object-relational mapping in Rails

RubyRM connects classes to database tables to establish an almost zero-configuration persistence layer for applications. 
The library provides a base class that, when subclassed, sets up a mapping between the new class and an existing table in the database. 
In the context of an application, these classes are commonly referred to as models. 
Models can also be connected to other models; this is done by defining associations.

RubyRM relies heavily on naming in that it uses class and association names to establish mappings between respective database
tables and foreign key columns. Although these mappings can be defined explicitly, it's recommended to follow naming conventions, 
especially when getting started with the library.

