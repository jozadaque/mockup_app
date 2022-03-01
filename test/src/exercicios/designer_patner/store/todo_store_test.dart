import 'package:flutter_test/flutter_test.dart';
import 'package:mockup_app/src/exercicios/designer_patner/store/todo_store.dart';

void main() async {
  testWidgets('todo store ...', (tester) async {
    final store = TodoStore();
    await store.getAllTodos();
  });
}
