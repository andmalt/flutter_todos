import '../../models/todo.dart';

abstract class LocalDataSource {
  Future<List<ToDoModel>> getToDos({int limit, int offset});
  Future<void> saveToDos(List<ToDoModel> todos);
  Future<void> deleteToDos(ToDoModel todo);
}
