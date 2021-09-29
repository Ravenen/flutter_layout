import 'package:flutter/material.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: const [
          Text(
            'Куди ви хочете поїхати?',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ],
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
          _buildPickerText('Учора, 23:00'),
          _buildPickerText('1 пасажир'),
        ],
      ),
    );
    return MaterialApp(
      title: 'BlaBlaCar Layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
