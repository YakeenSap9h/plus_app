import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:plus_app/core/utils/app_router.dart';
import 'package:plus_app/features/splash/presentation/views/widgets/circle_avatar_with_ripple_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6), () {

      GoRouter.of(context).push(AppRouter.kLogInView);
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Color(0xFFAB47BC)], // Deep purple to lavender
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [.2, .6],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 150),
            const CircleAvatarWithRippleAnimation(),
            const SizedBox(height: 100),
            const Text(
              'Pulse',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 77,
              ),
            ),
            const SizedBox(height: 10),

            Text(
              'Connect • Share • Inspire',
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.7),
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 50),
            SpinKitThreeBounce(
              color: Colors.white.withValues(alpha: .7),
              size: 30.0,
            ),

            const Expanded(child: SizedBox(height: 250)),

            Text(
              'Craeted by sap9h',
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.7),
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
