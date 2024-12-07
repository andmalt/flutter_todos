import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../models/todo.dart';

class ApiDataSource {
  final http.Client client;

  ApiDataSource(this.client);

  Future<List<ToDoModel>> fetchToDos() async {
    final response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => ToDoModel.fromJson(json)).toList();
    } else {
      throw Exception("Failed to fetch todos");
    }
  }
}
