import 'package:flutter/material.dart';
import "package:todo_app/pages/home_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        // primarySwatch: Colors.grey,
        appBarTheme: AppBarTheme(color: Colors.yellow[300]),
      ),
    );
  }
}


// Main이 Entry Point가 되는곳임
// main 에다가 다 넣지말고 Pages로 나눠서 넣어주기 