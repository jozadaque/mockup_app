import 'package:flutter/foundation.dart';
import 'package:mockup_app/src/exercicios/designer_patner_todos/json_consumer/services/todo_service.dart';
import 'package:mockup_app/src/exercicios/designer_patner_todos/json_consumer/src/models/todo_model.dart';

class TodoStore extends ChangeNotifier {
  final _todoService = TodoService();
  List<TodoModel> _todos = [];
  List<TodoModel> get todos => List<TodoModel>.unmodifiable(_todos);

  Future<void> getAllTodos() async {
    _todos = await _todoService.getTodos();
    notifyListeners();
  }
}
