import 'package:form_learn/models/todo-category.dart';
import 'package:form_learn/models/todo.dart';
import 'package:isar/isar.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<void> saveTodo(Todos newTodo) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.todos.putSync(newTodo));
  }

  Future<void> removeTodo(int id) async {
    final isar = await db;
    await isar.writeTxn(() => isar.todos.delete(id));
  }

  Future<void> saveCategory(TodoCategories newCategory) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.todoCategories.putSync(newCategory));
  }

  Future<List<Todos>> getAllTodos() async {
    final isar = await db;
    return await isar.todos.where().findAll();
  }

  Stream<List<Todos>> listenToTodos() async* {
    final isar = await db;
    yield* isar.todos.where().watch(fireImmediately: true);
  }

  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }

  Future<List<Todos>> getByCategory(TodoCategories category) async {
    final isar = await db;
    return await isar.todos
        .filter()
        .category((q) => q.idEqualTo(category.id))
        .findAll();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [TodosSchema, TodoCategoriesSchema],
        inspector: true,
      );
    }

    return Future.value(Isar.getInstance());
  }
}
