import '../entities/todo_entity.dart';

abstract class ToDoRepositories {
  Future<List<ToDoEntity>> getToDos({int limit = 20, int offset = 0});
  Future<bool> updateToDo(List<ToDoEntity> todos);
  Future<bool> deleteToDo(ToDoEntity todo);
}
