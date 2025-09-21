import 'package:flutter_todos/domain/entities/todo_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class ToDoModel with _$ToDoModel {
  // 👇 Necessario per poter aggiungere metodi/custom getters
  const ToDoModel._();

  const factory ToDoModel({
    required int id,
    required int userId,
    required String title,
    required bool completed,
  }) = _ToDoModel;

  factory ToDoModel.fromJson(Map<String, dynamic> json) => _$ToDoModelFromJson(json);

  // --- helper methods ---
  ToDoEntity toEntity() => ToDoEntity(id: id, title: title, completed: completed, userId: userId);

  static ToDoModel fromEntity(ToDoEntity t) =>
      ToDoModel(id: t.id, title: t.title, completed: t.completed, userId: t.userId);
}
