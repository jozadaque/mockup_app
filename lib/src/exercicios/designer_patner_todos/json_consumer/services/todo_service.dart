import 'package:dio/dio.dart';
import 'package:mockup_app/src/exercicios/designer_patner_todos/json_consumer/src/models/todo_model.dart';

class TodoService {
  final dio = Dio();

  Future<List<TodoModel>> getTodos() async {
    final dio = Dio();
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/todos');
    var list = response.data as List;
    final todos = list.map(TodoModel.fromJsom).toList();
    return todos;
  }
}
