import 'package:dio/dio.dart';
import 'package:mockup_app/src/exercicios/designer_patner/json_consumer/src/models/todo_model.dart';

class TodoStore {
  final List<TodoModel> todos = [];

  Future<List<TodoModel>> getAllTodos() async {
    final dio = Dio();

    final response =
        await dio.get('https://jsonplaceholder.typicode.com/todos');
    print('teste');
    print(response.data);

    return [];
  }
}
