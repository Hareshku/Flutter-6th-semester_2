class NewTodoModel {
  final int id;
  final String title;
  final String description;
  final DateTime dataTime;

  NewTodoModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.dataTime});

  todoMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'dateTime': dataTime
    };
  }

  fromMap(Map map) {
    return NewTodoModel(
        id: map['it'],
        title: map['title'],
        description: map['description'],
        dataTime: map['dateTime']);
  }
}
