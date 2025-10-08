import 'package:flutter/material.dart';
import 'package:plus_app/core/utils/functions/linear_gradient_in_log_in_page.dart';
import 'package:plus_app/features/auth/presentation/views/widgets/sign_up_enter_info_section.dart';
import 'package:plus_app/features/auth/presentation/views/widgets/sign_up_intro_section.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(gradient: linearGradientInLogInPage()),
      child: SingleChildScrollView(
        child: Column(
          children: const [SignUpIntroSection(), SignUpEnterInfoSection()],
        ),
      ),
    );
  }
}
