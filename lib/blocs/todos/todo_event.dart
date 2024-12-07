import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/todo.dart';

part 'todo_event.freezed.dart';

@freezed
class TodoEvent with _$TodoEvent {
  /// Evento per il caricamento iniziale
  const factory TodoEvent.load({
    @Default(20) int limit,
    @Default(0) int offset,
  }) = LoadToDoEvent;

  /// Evento per il caricamento incrementale
  const factory TodoEvent.loadMore({
    @Default(20) int limit,
  }) = LoadMoreToDoEvent;

  /// Evento per aggiornare un ToDo
  const factory TodoEvent.update(ToDoModel todo) = UpdateToDoEvent;

  /// Evento per eliminare un ToDo
  const factory TodoEvent.delete(ToDoModel todo) = DeleteToDoEvent;
}
