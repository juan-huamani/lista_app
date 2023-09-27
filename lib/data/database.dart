import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["Hacer Aplicativo", false],
      ["Entregar Tarea", false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
