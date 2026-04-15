import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const labelTextStyle = TextStyle(fontSize: 18.0, color: Colors.white);

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.text});

  final FaIconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 15.0),
        FaIcon(icon, size: 80.0),
        SizedBox(height: 20.0),
        Text(text, style: labelTextStyle),
      ],
    );
  }
}