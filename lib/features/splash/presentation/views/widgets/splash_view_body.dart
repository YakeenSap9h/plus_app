import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:plus_app/core/utils/app_router.dart';
import 'package:plus_app/core/utils/functions/linear_gradient_in_splash_view.dart';
import 'package:plus_app/features/splash/presentation/views/widgets/circle_avatar_with_ripple_animation.dart';
import 'package:plus_app/features/splash/presentation/views/widgets/connect_share_inspire.dart';
import 'package:plus_app/features/splash/presentation/views/widgets/pulse_text.dart';

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
        decoration: BoxDecoration(gradient: linearGradientInSplashView()),
        child: Column(
          children: [
            const SizedBox(height: 150),
            const CircleAvatarWithRippleAnimation(),
            const SizedBox(height: 100),
            PulseText(fontSize: 77),
            const SizedBox(height: 10),

            ConnectShareInspire(
              textStyle: TextStyle(
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
