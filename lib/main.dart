import 'package:flutter/material.dart';
import 'package:plus_app/features/splash/presentation/views/widgets/splash_view.dart';

void main() {
  
  runApp(const PlusApp());
}
class PlusApp extends StatelessWidget {
  const PlusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home:  const SplashView());
  }
}