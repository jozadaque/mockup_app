// Titulo
// Checkbox

class TodoModel {
  final String title;
  final bool isChecked;

  TodoModel({
    required this.title,
    required this.isChecked,
  });

  factory TodoModel.fromJsom(dynamic json) {
    return TodoModel(title: json['title'], isChecked: json['completed']);
  }
}
