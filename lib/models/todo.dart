import 'package:form_learn/models/todo-category.dart';
import 'package:isar/isar.dart';

part 'todo.g.dart';

@Collection()
class Todos {
  Id id = Isar.autoIncrement;
  late String title;
  late String content;

  @Backlink(to: "todo")
  final category = IsarLink<TodoCategories>();
}
