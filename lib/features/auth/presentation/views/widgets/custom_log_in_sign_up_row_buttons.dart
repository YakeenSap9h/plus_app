import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plus_app/consts.dart';
import 'package:plus_app/core/utils/app_router.dart';
import 'package:plus_app/core/utils/widgets/custom_button_on_press.dart';


class CustomLogInSignUpRowButtons extends StatelessWidget {
  const CustomLogInSignUpRowButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButtonONPress(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          linearGradient: LinearGradient(
            // colors: [Color(0xff2D2474), Colors.deepPurple],
            colors: [Colors.purple, kPrimaryPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [.2, .6],
          ),
          textColor: Colors.white,
          text: 'LogIn',
        ),
        CustomButtonONPress(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSignUpView);
          },
          textColor: Colors.white,
          text: 'SignUp',
          linearGradient: LinearGradient(
            // colors: [Color(0xff2D2474), Colors.deepPurple],
            colors: [kPrimarDarkPurpleBlue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [.2],
          ),
        ),
      ],
    );
  }
}
