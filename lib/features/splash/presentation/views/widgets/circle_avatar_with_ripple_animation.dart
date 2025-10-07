import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class CircleAvatarWithRippleAnimation extends StatelessWidget {
  const CircleAvatarWithRippleAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return RippleAnimation(
      color: Colors.white.withValues(alpha: .04),
      delay: const Duration(milliseconds: 300),
      repeat: true,
      minRadius: 40,
      maxRadius: 70,
      ripplesCount: 3,
      duration: const Duration(milliseconds: 6 * 300),
      child: CircleAvatar(
        minRadius: 75,
        maxRadius: 75,
        backgroundImage: AssetImage('assets/images/image.png'),
      ),
    );
  }
}
