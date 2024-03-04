import 'package:flutter/material.dart';
import 'package:simple_to_do_app/pages/add_list.dart';
import 'package:simple_to_do_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
      routes: {
        '/add_list': (context) => add_list(),
      },
    );
  }
}