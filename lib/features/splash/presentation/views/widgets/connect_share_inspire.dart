import 'package:flutter/material.dart';

class ConnectShareInspire extends StatelessWidget {
  const ConnectShareInspire({super.key, required this.textStyle});
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Text('Connect • Share • Inspire', style: textStyle);
  }
}
