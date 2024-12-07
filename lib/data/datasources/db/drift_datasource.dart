import 'package:drift/drift.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_todos/data/datasources/db/local_datasource.dart';
import '../../models/todo.dart';
import 'app_database.dart';

class DriftDataSource extends LocalDataSource {
  final AppDatabase db;

  DriftDataSource(this.db);

  @override
  Future<List<ToDoModel>> getToDos({int limit = 20, int offset = 0}) async {
    final results =
        await (db.select(db.todos)..limit(limit, offset: offset)).get();
    return results
        .map(
          (row) => ToDoModel(
            id: row.id,
            userId: row.userId,
            title: row.title,
            completed: row.completed,
          ),
        )
        .toList();
  }

  @override
  Future<void> saveToDos(List<ToDoModel> todos) async {
    try {
      await db.batch((batch) {
        batch.insertAllOnConflictUpdate(
          db.todos,
          todos.map(
            (todo) => TodosCompanion.insert(
              id: Value(todo.id),
              userId: todo.userId,
              title: todo.title,
              completed: todo.completed,
            ),
          ),
        );
      });
    } catch (e) {
      throw ErrorDescription('An error occurred when saving the ToDos:$e');
    }
  }

  @override
  Future<void> deleteToDos(ToDoModel todo) async {
    try {
      await (db.delete(db.todos)..where((m) => m.id.equals(todo.id))).go();
    } catch (e) {
      throw ErrorDescription('An error occurred when deleting the ToDos: $e');
    }
  }
}
