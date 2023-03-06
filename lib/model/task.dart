class Task {
  final String name;
  bool checked;
  final String id;

  Task({required this.name, required this.checked, required this.id});

  @override
  String toString() {
    return "$name $checked $id";
  }
}
