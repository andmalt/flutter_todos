import '../entities/todo_entity.dart';
import '../repositories/todo_repositories.dart';

class UpdateToDo {
  final ToDoRepositories repository;

  UpdateToDo(this.repository);

  Future<bool> call(List<ToDoEntity> todos) async {
    return await repository.updateToDo(todos);
  }
}
