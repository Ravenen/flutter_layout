import 'package:flutter/cupertino.dart';
import 'package:layout_app/screens/home/text_fields_section/rounded_text_field.dart';

Widget textFieldsSection = Row(
  children: [
    Expanded(
      child: Column(
        children: const [
          RoundedTextField(hintText: 'Виїжджаєте з'),
          RoundedTextField(hintText: 'Прямуєте до'),
        ],
      ),
    ),
  ],
);
