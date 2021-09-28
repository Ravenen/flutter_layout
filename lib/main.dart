import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'BlaBlaCar Layout',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
