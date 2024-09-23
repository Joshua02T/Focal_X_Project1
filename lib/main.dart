import 'package:flutter/material.dart';
import 'package:focal_project_1/view/groups.dart';
import 'package:focal_project_1/view/mostpopular.dart';

void main() {
  runApp(MaterialApp(
      home: const MyApp(),
      routes: {
        'mostpopular': (context) => const MostPopular(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Tajawal')));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Groups();
  }
}
