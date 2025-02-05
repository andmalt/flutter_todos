import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/todo.dart';

part 'todo_event.freezed.dart';

@freezed
class TodoEvent with _$TodoEvent {
  /// Event for initial loading
  const factory TodoEvent.load({
    @Default(20) int limit,
    @Default(0) int offset,
  }) = LoadToDoEvent;

  /// Event for incremental uploading
  const factory TodoEvent.loadMore({
    @Default(20) int limit,
  }) = LoadMoreToDoEvent;

  /// Event to update a ToDo
  const factory TodoEvent.update(ToDoModel todo) = UpdateToDoEvent;

  /// Event to remove a ToDo
  const factory TodoEvent.delete(ToDoModel todo) = DeleteToDoEvent;
}
