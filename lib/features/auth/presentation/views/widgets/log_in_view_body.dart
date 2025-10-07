import 'package:flutter/material.dart';
import 'package:plus_app/core/utils/styles.dart';
import 'package:plus_app/features/auth/presentation/views/widgets/cicle_avatar_with_neon_light.dart';
import 'package:plus_app/features/splash/presentation/views/widgets/connect_share_inspire.dart';
import 'package:plus_app/features/splash/presentation/views/widgets/pulse_text.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(gradient: linearGradientInLogInPage()),
      child: SafeArea(
        child: Column(
          children: [
            const CircleAvatarWithNeonLight(),
            const SizedBox(height: 8),
            PulseText(fontSize: 44),
            const SizedBox(height: 2),
            ConnectShareInspire(
              textStyle: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  LinearGradient linearGradientInLogInPage() {
    return LinearGradient(
      colors: [Color(0xff2D2474), Colors.deepPurple, Color(0xff2D2474)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [.1, 0.5, 0.6],
    );
  }
}
