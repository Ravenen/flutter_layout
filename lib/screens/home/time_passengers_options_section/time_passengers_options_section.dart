import 'package:flutter/cupertino.dart';
import 'package:layout_app/screens/home/time_passengers_options_section/option_text.dart';

Widget timePassengersOptionsSection = Container(
  padding: const EdgeInsets.symmetric(vertical: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      OptionText(text: 'Сьогодні, 12:00'),
      OptionText(text: '1 пасажир'),
    ],
  ),
);
