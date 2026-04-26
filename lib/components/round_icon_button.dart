import 'package:flutter/material.dart';


class RoundIconButon extends StatelessWidget {
  const RoundIconButon({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(15),
      ),
      elevation: 6.0,
      fillColor: const Color(0xff4c4f5e),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}