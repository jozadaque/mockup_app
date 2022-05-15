import 'package:mockup_app/src/exercicios/designer_patner_todos/json_consumer/src/models/todo_model.dart';
import 'package:mockup_app/src/exercicios/designer_patner_todos/store/todo_store.dart';

void main() async {
  final store = TodoStore();
  await store.getAllTodos();
  store.todos.add(TodoModel(title: 'title', isChecked: true));
  print(store.todos[0].title);
}
