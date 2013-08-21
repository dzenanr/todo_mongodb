import 'package:unittest/unittest.dart';
import 'package:mongo_dart/mongo_dart.dart';

const String DEFAULT_URI = 'mongodb://127.0.0.1/';
const String DB_NAME = 'todo';
const String COLLECTION_NAME = 'tasks';

testTasks(Db db, DbCollection tasks) {
  group('Testing tasks', () {
    test('Select all tasks', () {
      tasks.find().toList().then((list) {
        expect(list.length, 3);
      });
    });

    test('Select completed tasks', () {
      tasks.find({"completed": true}).toList().then((list) {
        expect(list.length, 1);
        print('=== completed tasks ===');
        print(list);
      });
    });
  });
}

main() {
  Db db = new Db('${DEFAULT_URI}${DB_NAME}');
  DbCollection tasks;
  db.open()
  .then((_) {
    tasks = db.collection(COLLECTION_NAME);
    tasks.remove();
  })
  .then((_) {
    var today = new DateTime.now();
    tasks.insertAll(
      [
        {"title": "a", "completed": false, "updated": today},
        {"title": "b", "completed": true,  "updated": today},
        {"title": "c", "completed": false, "updated": today}
      ]
    );
  })
  .then((_) {
    testTasks(db, tasks);
    tasks.find().toList().then((list) {
      print('*** all tasks ***');
      print(list);
    });
  });
}