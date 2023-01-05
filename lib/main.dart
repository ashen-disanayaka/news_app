import 'package:flutter/material.dart';
import 'package:news_appnew/home_page.dart';
import 'package:news_appnew/start_page.dart';
import 'package:news_appnew/verticallist/post_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}

