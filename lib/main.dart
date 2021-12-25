import 'package:flutter/material.dart';
import 'package:test_json_serialize/home_page.dart';

void main() => runApp(MaterialApp(
      home: MainApp(),
    ));

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Project'),
      ),
      body: HomePage(),
    );
  }
}
