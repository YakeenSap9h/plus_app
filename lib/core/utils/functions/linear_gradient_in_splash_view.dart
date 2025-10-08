import 'package:flutter/material.dart';


  LinearGradient linearGradientInSplashView() {
    return LinearGradient(
      colors: [Color(0xff2D2474), Colors.deepPurple],
      // ! colors: [Colors.blue, Color(0xFFAB47BC)], // Deep purple to lavender
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [.2, .6],
    );
  }