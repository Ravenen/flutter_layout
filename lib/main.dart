import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:layout_app/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget _buildTextField(String hint) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: CustomColors.generateMaterialColor(Colors.white)[600],
              hintText: hint),
        ));
  }

  Widget _buildPickerText(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, color: Colors.lightBlue),
    );
  }

  Widget _buildRideHistoryListTile(
      String from, String to, int passengersNumber) {
    Widget _buildVerticallyCenteredIcon(IconData icon) {
      return SizedBox(
        height: double.infinity, // Place the icon vertically centered
        child: Icon(icon),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(from + " → " + to),
        subtitle: Text(passengersNumber.toString() + ' пасажир'),
        minLeadingWidth: 0,
        leading: _buildVerticallyCenteredIcon(Icons.watch_later_outlined),
        trailing: _buildVerticallyCenteredIcon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.only(bottom: 30),
      alignment: Alignment.centerLeft,
      child: const Text(
        'Куди ви хочете поїхати?',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );

    Widget textFieldsSection = Row(
      children: [
        Expanded(
          child: Column(
            children: [
              _buildTextField('Виїжджаєте з'),
              _buildTextField('Прямуєте до'),
            ],
          ),
        ),
      ],
    );

    Widget divider = const Divider(
      thickness: 2,
    );

    Widget timeSector = Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildPickerText('Сьогодні, 12:00'),
          _buildPickerText('1 пасажир'),
        ],
      ),
    );

    Widget rideHistorySector = Column(
      children: [
        _buildRideHistoryListTile('Львів, Львівська область, Україна, 79000',
            'Червоноград, Львівська область, Україна, 80100', 1),
        _buildRideHistoryListTile('Червоноград, Львівська область, Україна, 80100',
            'Львів, Львівська область, Україна, 79000', 1),
        _buildRideHistoryListTile('Львів, Львівська область, Україна, 79000',
            'Самбір, Львівська область, Україна, 81400', 1),
        _buildRideHistoryListTile('Самбір, Львівська область, Україна, 81400',
            'Львів, Львівська область, Україна, 79000', 1),
      ],
    );
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'BlaBlaCar Layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        primarySwatch: CustomColors.onlyWhite,
      ),
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    titleSection,
                    textFieldsSection,
                    divider,
                    timeSector,
                    divider,
                    rideHistorySector,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
