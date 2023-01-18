import 'package:flutter/material.dart';
import 'package:todo_list/screen/createTask.dart';
import './screen/listTaskpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => ListTaskPage(),
        '/create': (context) => CreateTask()
      },
    );
  }
}
