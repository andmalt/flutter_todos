import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todos/data/models/todo.dart';
import 'package:flutter_todos/domain/entities/todo_entity.dart';
import 'package:flutter_todos/domain/usercases/delete_todo.dart';
import 'package:flutter_todos/domain/usercases/update_todo.dart';
import '../../domain/usercases/get_todo.dart';
import 'todo_event.dart';
import 'todo_state.dart';

class ToDoBloc extends Bloc<TodoEvent, TodoState> {
  final GetToDos getToDos;
  final UpdateToDo updateToDo;
  final DeleteTodo deleteTodo;

  ToDoBloc(this.getToDos, this.updateToDo, this.deleteTodo)
      : super(const TodoState.initial()) {
    on<LoadToDoEvent>(_onLoadToDoEvent);
    on<LoadMoreToDoEvent>(_onLoadMoreToDoEvent);
    on<UpdateToDoEvent>(_onUpdateToDoEvent);
    on<DeleteToDoEvent>(_onDeleteToDoEvent);
  }

  Future<void> _onLoadToDoEvent(
      LoadToDoEvent event, Emitter<TodoState> emit) async {
    emit(const TodoState.loading());
    try {
      final todos = await getToDos(limit: event.limit, offset: event.offset);
      final newTodos = todos
          .map(
            (todo) => ToDoModel(
              id: todo.id,
              title: todo.title,
              completed: todo.completed,
              userId: todo.userId,
            ),
          )
          .toList();
      emit(TodoState.loaded(
        todos: newTodos,
        isLoadingMore: false,
        hasMore: newTodos.length == event.limit,
      ));
    } catch (e) {
      emit(TodoState.error(e.toString()));
    }
  }

  Future<void> _onLoadMoreToDoEvent(
      LoadMoreToDoEvent event, Emitter<TodoState> emit) async {
    // Check that the status is `loaded`
    final currentState = state.maybeMap(
      loaded: (state) => state,
      orElse: () => null,
    );

    if (currentState == null || currentState.isLoadingMore) return;

    // Update the state with `isLoadingMore: true`
    emit(currentState.copyWith(isLoadingMore: true));

    try {
      // Wait for new ToDos to load
      final todos = await getToDos(
        limit: event.limit,
        offset: currentState.todos.length,
      );
      final newTodos = todos
          .map(
            (todo) => ToDoModel(
              id: todo.id,
              title: todo.title,
              completed: todo.completed,
              userId: todo.userId,
            ),
          )
          .toList();
      // Check if `emit` is still valid
      if (!emit.isDone) {
        emit(currentState.copyWith(
          todos: [...currentState.todos, ...newTodos],
          isLoadingMore: false,
          hasMore: newTodos.length == event.limit,
        ));
      }
    } catch (error) {
      // Handle errors
      if (!emit.isDone) {
        emit(TodoState.error(error.toString()));
      }
    }
  }

  Future<void> _onUpdateToDoEvent(
      UpdateToDoEvent event, Emitter<TodoState> emit) async {
    try {
      final currentState = state.maybeMap(
        loaded: (state) => state,
        orElse: () => null,
      );

      if (currentState == null) return;
      final updatedTodos = currentState.todos.map((todo) {
        return todo.id == event.todo.id ? event.todo : todo;
      }).toList();
      final todos = updatedTodos.map((e) => ToDoEntity.fromModel(e)).toList();
      final isUpdated = await updateToDo(todos);
      if (isUpdated) {
        emit(currentState.copyWith(todos: updatedTodos));
      }
    } catch (e) {
      emit(TodoState.error(e.toString()));
    }
  }

  Future<void> _onDeleteToDoEvent(
      DeleteToDoEvent event, Emitter<TodoState> emit) async {
    final currentState = state.maybeMap(
      loaded: (state) => state,
      orElse: () => null,
    );

    if (currentState == null) return;

    try {
      // Remove todo from the list
      final updatedTodos =
          currentState.todos.where((todo) => todo.id != event.todo.id).toList();
      final todo = ToDoEntity.fromModel(event.todo);
      final isDeleted = await deleteTodo(todo);
      if (isDeleted) {
        emit(currentState.copyWith(todos: updatedTodos));
      }
    } catch (e) {
      emit(TodoState.error(e.toString()));
    }
  }
}
