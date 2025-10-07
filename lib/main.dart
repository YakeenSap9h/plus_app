import 'package:flutter/material.dart';
import 'package:plus_app/features/splash/presentation/views/widgets/splash_view.dart';

void main() {
  runApp(const PulseApp());
}

class PulseApp extends StatelessWidget {
  const PulseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff141628),
      ),
      home: const SplashView(),
    );
  }
}
