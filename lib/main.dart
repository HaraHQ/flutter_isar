import 'package:flutter/material.dart';
import 'package:form_learn/isar_service.dart';
import 'package:form_learn/models/todo.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final service = IsarService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Isar DB Tutorial'), actions: [
        IconButton(
          onPressed: () => service.cleanDb(),
          icon: const Icon(Icons.delete),
        )
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: StreamBuilder<List<Todos>>(
                stream: service.listenToTodos(),
                builder: (context, snapshot) => GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  scrollDirection: Axis.horizontal,
                  children: snapshot.hasData
                      ? snapshot.data!.map((todo) {
                          return ElevatedButton(
                            onPressed: () {
                              final int todoId = todo.id;
                              service.removeTodo(todoId);
                            },
                            child: Text(todo.title),
                          );
                        }).toList()
                      : [],
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              service.saveTodo(Todos()
                ..title = 'test aja'
                ..content = 'ayam ditest');
            },
            child: const Text("Add Todo"),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Add Category"),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
