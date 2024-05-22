import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List todoListe = [];

  // reference our box
  final _mybox = Hive.box('mybox');

  // run this method if this is the first time ever opening this app
  void createInitialData() {
    todoListe = [
      ["Make tutorial", false],
      ["Do Exercise", false]
    ];
  }

  // load the data from database
  void loadData() {
    todoListe = _mybox.get('TODOLIST');
  }

  // update the database
  void updateData() {
    _mybox.put("TODOLIST", todoListe);
  }
}
