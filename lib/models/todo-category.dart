import 'package:form_learn/models/todo.dart';
import 'package:isar/isar.dart';

part 'todo-category.g.dart';

@Collection()
class TodoCategories {
  Id? id = Isar.autoIncrement;
  late String title;

  final todo = IsarLinks<Todos>();
}
