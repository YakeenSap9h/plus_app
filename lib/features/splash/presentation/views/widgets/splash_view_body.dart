import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:plus_app/features/splash/presentation/views/widgets/circle_avatar_with_ripple_animation.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurpleAccent,
              Colors.purpleAccent.withValues(alpha: .5),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.4, 0.5],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 150),
            const CircleAvatarWithRippleAnimation(),
            const SizedBox(height: 50),
            const Text(
              'Pulse',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 77,
              ),
            ),
            const SizedBox(height: 50),

            Text(
              'Connect Share Inspire',
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.7),
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 80),
            SpinKitThreeBounce(
              color: Colors.white.withValues(alpha: .7),
              size: 30.0,
            ),

            const Expanded(child: SizedBox(height: 80)),

            Text(
              'Craeted by sap9h',
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.7),
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
