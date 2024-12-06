import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class ToDoModel with _$ToDoModel {
  const factory ToDoModel({
    required int id,
    required int userId,
    required String title,
    required bool completed,
  }) = _ToDoModel;

  factory ToDoModel.fromJson(Map<String, dynamic> json) =>
      _$ToDoModelFromJson(json);
}
