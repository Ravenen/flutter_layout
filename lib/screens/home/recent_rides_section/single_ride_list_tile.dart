import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleRideListTile extends StatelessWidget {
  const SingleRideListTile(
      {Key? key,
      required this.fromText,
      required this.toText,
      required this.passengersNumber})
      : super(key: key);

  final String fromText;
  final String toText;
  final int passengersNumber;

  Widget _buildVerticallyCenteredIcon(IconData icon) {
    return SizedBox(
      height: double.infinity, // Place the icon vertically centered
      child: Icon(icon),
    );
  }

  String _getPluralEnding(int quantity) {
    String result = "";

    if ((quantity % 10 >= 2 && quantity % 10 <= 4) &&
        !(quantity % 100 >= 11 && quantity % 100 <= 14)) {
      result = "и";
    } else {
      result = "ів";
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    String pluralEnding = _getPluralEnding(passengersNumber);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text("$fromText → $toText"),
        subtitle: Text("$passengersNumber пасажир$pluralEnding"),
        minLeadingWidth: 0,
        leading: _buildVerticallyCenteredIcon(Icons.watch_later_outlined),
        trailing: _buildVerticallyCenteredIcon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
