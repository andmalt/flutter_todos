import 'package:flutter_todos/domain/entities/todo_entity.dart';
import 'package:flutter_todos/domain/repositories/todo_repositories.dart';

class GetToDos {
  final ToDoRepositories repository;

  GetToDos(this.repository);

  Future<List<ToDoEntity>> call({int limit = 20, int offset = 0}) async {
    return await repository.getToDos(limit: limit, offset: offset);
  }
}
