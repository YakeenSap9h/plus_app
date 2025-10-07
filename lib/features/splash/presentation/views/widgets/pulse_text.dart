import 'package:flutter/material.dart';

class PulseText extends StatelessWidget {
  const PulseText({super.key, required this.fontSize});
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Pulse',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
