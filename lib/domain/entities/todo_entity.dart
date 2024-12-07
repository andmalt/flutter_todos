import '../../data/models/todo.dart';

class ToDoEntity {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  ToDoEntity({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
  });

  factory ToDoEntity.fromModel(ToDoModel model) {
    return ToDoEntity(
      id: model.id,
      userId: model.userId,
      title: model.title,
      completed: model.completed,
    );
  }
}
