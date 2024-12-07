import '../entities/todo_entity.dart';
import '../repositories/todo_repositories.dart';

class DeleteTodo {
  final ToDoRepositories repository;
  DeleteTodo(this.repository);

  Future<bool> call(ToDoEntity todo) async {
    return await repository.deleteToDo(todo);
  }
}
