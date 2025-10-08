import 'package:flutter/material.dart';
import 'package:plus_app/core/utils/functions/linear_gradient_in_log_in_page.dart';
import 'package:plus_app/features/auth/presentation/views/widgets/enter_info_section.dart';
import 'package:plus_app/features/auth/presentation/views/widgets/intro_section.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(gradient: linearGradientInLogInPage()),
      child: Column(children: [IntroSection(), EnterInfoSection()]),
    );
  }
}
