 import 'package:flutter/material.dart';

LinearGradient linearGradientInLogInPage() {
    return LinearGradient(
      colors: [Color(0xff2D2474), Colors.deepPurple, Color(0xff2D2474)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [.1, 0.5, 0.6],
    );
  }