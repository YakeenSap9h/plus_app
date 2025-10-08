
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plus_app/consts.dart';
import 'package:plus_app/core/utils/styles.dart';

class CustomBigButton extends StatelessWidget {
  const CustomBigButton({
    super.key,
    required this.text,
    this.borderRadius,

    this.onPressed,
  });
  final String text;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 1),

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, kPrimaryPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [.2, .6],
          ),
          borderRadius: BorderRadius.circular(13),
        ),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            ),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text, style: Styles.textStyle20),
              const SizedBox(width: 24),
              const Icon(FontAwesomeIcons.arrowRight, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
