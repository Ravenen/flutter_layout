import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Row(
      children: const [
        Expanded(
          child: Text(
            'Куди ви хочете поїхати?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
          ),
        ),
      ],
    );

    return MaterialApp(
      title: 'BlaBlaCar Layout',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                titleSection,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
