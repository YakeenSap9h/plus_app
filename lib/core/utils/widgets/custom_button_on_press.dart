import 'package:flutter/material.dart';
import 'package:plus_app/consts.dart';
import 'package:plus_app/core/utils/styles.dart';

class CustomButtonONPress extends StatelessWidget {
  const CustomButtonONPress({
    super.key,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
    this.onPressed,
  });
  final String text;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 1),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // colors: [Color(0xff2D2474), Colors.deepPurple],
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

          child: Text(
            text,
            style: Styles.textStyle14.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
