#Todo MongoDB

Project based on
[Target 11: Use IndexedDB](http://www.dartlang.org/docs/tutorials/indexeddb/),
[Using Dart with JSON Web Services](http://www.dartlang.org/articles/json-web-service/),
[dartling] (https://github.com/dzenanr/dartling)
and
[mongo_dart: MongoDB driver for Dart](http://pub.dartlang.org/packages/mongo_dart).

Client

+ client uses locally IndexedDB
+ client starts by loading data from IndexedDB
+ local data saved in IndexedDB by default
+ client has 2 buttons: To server and From server
+ To server (POST) integrates local tasks to data on the server
+ From server (GET) integrates server data to local tasks

Server

+ when server starts, it loads data from MongoDB to the model in main memory
+ when the model in main memory changes, the database is updated
+ server programming uses the model in main memory and not the database

Use

1. run server first (
   todo_server_dartling_mongodb/bin/server.dart) in Dart Editor;
   it runs when you see in the server.dart tab in Dart Editor:
   Server at http://127.0.0.1:8080;
   if it does not run, use Run/Manage Launches
2. run client (todo_client_idb/web/app.html) in Dartium
3. run client as JavaScript (todo_client_idb/web/app.html) in Chrome
4. use the client app in Dartium:
   1. From server to integrate server data locally
   2. add, remove and update tasks (saved locally in IndexedDB by default)
   3. To server to integrate local data to server
5. use the client app in Chrome:
   1. From server to integrate server data locally
   2. add, remove and update tasks (saved locally in IndexedDB by default)
   3. To server to integrate local data to server




