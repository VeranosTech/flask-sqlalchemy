��    	      d               �   �   �      u  E   �  �   �  G   z  e   �  5   (  3   ^  ~  �  �        �  E   �  �   2  G   �  e   &  5   �  3   �   Connect to the following signals to get notified before and after changes are committed to the database. These changes are only tracked if ``SQLALCHEMY_TRACK_MODIFICATIONS`` is enabled in the config. Signalling Support The operation is one of ``'insert'``, ``'update'``, and ``'delete'``. The sender is the application that emitted the changes. The receiver is passed the ``changes`` parameter with a list of tuples in the form ``(model instance, operation)``. This signal is sent when changed models were committed to the database. This signal works exactly like :data:`models_committed` but is emitted before the commit takes place. This will be disabled by default in a future version. ``before_models_committed`` is triggered correctly. Project-Id-Version: Flask-SQLAlchemy 2.3
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
 Connect to the following signals to get notified before and after changes are committed to the database. These changes are only tracked if ``SQLALCHEMY_TRACK_MODIFICATIONS`` is enabled in the config. Signalling Support The operation is one of ``'insert'``, ``'update'``, and ``'delete'``. The sender is the application that emitted the changes. The receiver is passed the ``changes`` parameter with a list of tuples in the form ``(model instance, operation)``. This signal is sent when changed models were committed to the database. This signal works exactly like :data:`models_committed` but is emitted before the commit takes place. This will be disabled by default in a future version. ``before_models_committed`` is triggered correctly. 