��    %      D              l     m     o     q     s  �  �              %     >  �   O     �  �  �     �  9   �     �  �        �     �     �     �  ;   	     H	  8   _	    �	    �  ?   �  �        �     �  
   �     �     �     �     �     �     �  ~       �     �     �     �  �  �    '     *     =     V  �   g     �  �       �  9   �       �        �     �     �       ;   $     `  8   w    �    �  ?   �  �        �     �  
   �     �     �     �     �             1 2 3 Add it to the session Alright, that was not hard.  What happens at what point?  Before you add the object to the session, SQLAlchemy basically does not plan on adding it to the transaction.  That is good because you can still discard the changes.  For example think about creating the post at a page but you only want to pass the post to the template for preview rendering instead of storing it in the database. Before we can query something we will have to insert some data.  All your models should have a constructor, so make sure to add one if you forgot. Constructors are only used by you, not by SQLAlchemy internally so it's entirely up to you how you define them. Commit the session Create the Python object Deleting Records Deleting records is very similar, instead of :func:`~sqlalchemy.orm.session.Session.add` use :func:`~sqlalchemy.orm.session.Session.delete`: Getting user by primary key: If you write a Flask view function it's often very handy to return a 404 error for missing entries.  Because this is a very common idiom, Flask-SQLAlchemy provides a helper for this exact purpose.  Instead of :meth:`~sqlalchemy.orm.query.Query.get` one can use :meth:`~Query.get_or_404` and instead of :meth:`~sqlalchemy.orm.query.Query.first` :meth:`~Query.first_or_404`. This will raise 404 errors instead of returning `None`:: Inserting Records Inserting data into the database is a three step process: Limiting users: Now that you have :ref:`declared models <models>` it's time to query the data from the database.  We will be using the model definitions from the :ref:`quickstart` chapter. Ordering users by something: Queries in Views Querying Records Retrieve a user by username: Same as above but for a non existing username gives `None`: Select, Insert, Delete Selecting a bunch of users by a more complex expression: So how do we get data back out of our database?  For this purpose Flask-SQLAlchemy provides a :attr:`~Model.query` attribute on your :class:`Model` class.  When you access it you will get back a new query object over all records.  You can then use methods like :func:`~sqlalchemy.orm.query.Query.filter` to filter the records before you fire the select with :func:`~sqlalchemy.orm.query.Query.all` or :func:`~sqlalchemy.orm.query.Query.first`.  If you want to go by primary key you can also use :func:`~sqlalchemy.orm.query.Query.get`. The :func:`~sqlalchemy.orm.session.Session.add` function call then adds the object.  It will issue an `INSERT` statement for the database but because the transaction is still not committed you won't get an ID back immediately.  If you do the commit, your user will have an ID: The following queries assume following entries in the database: The session here is not the Flask session, but the Flask-SQLAlchemy one. It is essentially a beefed up version of a database transaction.  This is how it works: `email` `id` `username` admin admin@example.com guest guest@example.com peter peter@example.org Project-Id-Version: Flask-SQLAlchemy 2.3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-04-09 11:38+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ko
Language-Team: ko <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 1 2 3 Add it to the session Alright, that was not hard.  What happens at what point?  Before you add the object to the session, SQLAlchemy basically does not plan on adding it to the transaction.  That is good because you can still discard the changes.  For example think about creating the post at a page but you only want to pass the post to the template for preview rendering instead of storing it in the database. Before we can query something we will have to insert some data.  All your models should have a constructor, so make sure to add one if you forgot. Constructors are only used by you, not by SQLAlchemy internally so it's entirely up to you how you define them. Commit the session Create the Python object Deleting Records Deleting records is very similar, instead of :func:`~sqlalchemy.orm.session.Session.add` use :func:`~sqlalchemy.orm.session.Session.delete`: Getting user by primary key: If you write a Flask view function it's often very handy to return a 404 error for missing entries.  Because this is a very common idiom, Flask-SQLAlchemy provides a helper for this exact purpose.  Instead of :meth:`~sqlalchemy.orm.query.Query.get` one can use :meth:`~Query.get_or_404` and instead of :meth:`~sqlalchemy.orm.query.Query.first` :meth:`~Query.first_or_404`. This will raise 404 errors instead of returning `None`:: Inserting Records Inserting data into the database is a three step process: Limiting users: Now that you have :ref:`declared models <models>` it's time to query the data from the database.  We will be using the model definitions from the :ref:`quickstart` chapter. Ordering users by something: Queries in Views Querying Records Retrieve a user by username: Same as above but for a non existing username gives `None`: Select, Insert, Delete Selecting a bunch of users by a more complex expression: So how do we get data back out of our database?  For this purpose Flask-SQLAlchemy provides a :attr:`~Model.query` attribute on your :class:`Model` class.  When you access it you will get back a new query object over all records.  You can then use methods like :func:`~sqlalchemy.orm.query.Query.filter` to filter the records before you fire the select with :func:`~sqlalchemy.orm.query.Query.all` or :func:`~sqlalchemy.orm.query.Query.first`.  If you want to go by primary key you can also use :func:`~sqlalchemy.orm.query.Query.get`. The :func:`~sqlalchemy.orm.session.Session.add` function call then adds the object.  It will issue an `INSERT` statement for the database but because the transaction is still not committed you won't get an ID back immediately.  If you do the commit, your user will have an ID: The following queries assume following entries in the database: The session here is not the Flask session, but the Flask-SQLAlchemy one. It is essentially a beefed up version of a database transaction.  This is how it works: `email` `id` `username` admin admin@example.com guest guest@example.com peter peter@example.org 