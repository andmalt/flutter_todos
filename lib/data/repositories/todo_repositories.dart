import 'package:flutter_todos/data/datasources/db/local_datasource.dart';
import 'package:flutter_todos/data/models/todo.dart';
import 'package:flutter_todos/domain/entities/todo_entity.dart';
import 'package:flutter_todos/domain/repositories/todo_repositories.dart';

import '../datasources/api/api_datasource.dart';

class ToDoRepositoryImpl extends ToDoRepositories {
  final ApiDataSource apiDataSource;
  final LocalDataSource localDataSource;

  ToDoRepositoryImpl({
    required this.apiDataSource,
    required this.localDataSource,
  });

  @override
  Future<List<ToDoEntity>> getToDos({int limit = 20, int offset = 0}) async {
    final localData =
        await localDataSource.getToDos(limit: limit, offset: offset);
    final entity =
        localData.map((model) => ToDoEntity.fromModel(model)).toList();
    if (localData.isNotEmpty || offset > 0) {
      return entity;
    }
    final remoteData = await apiDataSource.fetchToDos();
    await localDataSource.saveToDos(remoteData);
    final dataSource =
        await localDataSource.getToDos(limit: limit, offset: offset);
    final newEntity =
        dataSource.map((model) => ToDoEntity.fromModel(model)).toList();
    return newEntity;
  }

  @override
  Future<bool> updateToDo(List<ToDoEntity> todos) async {
    final newToDos = todos
        .map((e) => ToDoModel(
              id: e.id,
              userId: e.userId,
              title: e.title,
              completed: e.completed,
            ))
        .toList();
    try {
      await localDataSource.saveToDos(newToDos);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> deleteToDo(ToDoEntity todo) async {
    final newToDo = ToDoModel(
      id: todo.id,
      userId: todo.userId,
      title: todo.title,
      completed: todo.completed,
    );
    try {
      await localDataSource.deleteToDos(newToDo);
      return true;
    } catch (e) {
      return false;
    }
  }
}
