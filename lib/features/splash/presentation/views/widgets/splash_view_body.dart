import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.purple),
      child: Column(
        children: [
          RippleAnimation(
            color: Colors.deepOrange,
            delay: const Duration(milliseconds: 300),
            repeat: true,
            minRadius: 75,
            maxRadius: 140,
            ripplesCount: 6,
            duration: const Duration(milliseconds: 6 * 300),
            child: CircleAvatar(
              minRadius: 75,
              maxRadius: 75,
              backgroundImage: AssetImage('assets/images/image.png'),
            ),
          ),
        ],
      ),
    );
  }
}
