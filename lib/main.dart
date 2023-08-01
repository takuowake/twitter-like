import 'package:flutter/material.dart';
import 'package:twitter_like/view/screen.dart';
import 'package:twitter_like/view/start_up/login_page.dart';
import 'package:twitter_like/view/time_line/time_line_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}