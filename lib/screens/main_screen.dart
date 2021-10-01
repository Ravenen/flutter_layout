import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout_app/screens/bottom_navigation_bar.dart';
import 'package:layout_app/screens/home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ListView(children: const [HomeScreen()])),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        items: bottomNavigationBarItemsList,
        currentIndex: 0,
        selectedItemColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
