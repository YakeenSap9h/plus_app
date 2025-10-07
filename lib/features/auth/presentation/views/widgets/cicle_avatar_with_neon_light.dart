import 'package:flutter/material.dart';

class CircleAvatarWithNeonLight extends StatelessWidget {
  const CircleAvatarWithNeonLight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withValues(alpha: .6),
            blurRadius: 4.0,
            spreadRadius: 0.0,
            offset: const Offset(0.0, 3.0),
          ),
        ],
      ),
      child: CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage('assets/images/p_purple_back.png'),
      ),
    );
  }
}
