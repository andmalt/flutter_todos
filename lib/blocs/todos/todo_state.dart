import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/todo.dart';

part 'todo_state.freezed.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = _Initial;
  const factory TodoState.loading() = _Loading;
  const factory TodoState.loaded({
    required List<ToDoModel> todos,
    required bool isLoadingMore,
    required bool hasMore,
  }) = _Loaded;
  const factory TodoState.error(String message) = _Error;
}
