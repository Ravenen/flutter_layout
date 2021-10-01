import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout_app/theme/custom_colors.dart';

class RoundedTextField extends StatefulWidget {
  const RoundedTextField({Key? key, required this.hintText}) : super(key: key);

  final String hintText;

  @override
  _RoundedTextFieldState createState() => _RoundedTextFieldState();
}

class _RoundedTextFieldState extends State<RoundedTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: CustomColors.generateMaterialColor(Colors.white)[600],
            hintText: widget.hintText),
      ),
    );
  }
}
