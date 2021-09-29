import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout_app/screens/home/recent_rides_section/recent_rides_section.dart';
import 'package:layout_app/screens/home/text_fields_section/text_fields_section.dart';
import 'package:layout_app/screens/home/time_passengers_options_section/time_passengers_options_section.dart';
import 'package:layout_app/screens/home/title_section/title_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  titleSection,
                  textFieldsSection,
                  const Divider(thickness: 2),
                  timePassengersOptionsSection,
                  const Divider(thickness: 2),
                  recentRidesSection,
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Пошук',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Пропозиція',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessible_forward),
            label: 'Ваші поїздки',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline),
            label: 'Вхідні',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Профіль',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
