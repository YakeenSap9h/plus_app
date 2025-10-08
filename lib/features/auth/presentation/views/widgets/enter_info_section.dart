import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:plus_app/consts.dart';
import 'package:plus_app/core/utils/app_router.dart';
import 'package:plus_app/core/utils/styles.dart';
import 'package:plus_app/core/utils/widgets/custom_button_on_press.dart';
import 'package:plus_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:plus_app/features/auth/presentation/views/widgets/custom_big_button.dart';

class EnterInfoSection extends StatelessWidget {
  const EnterInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 24,
        bottom: 20,
        left: MediaQuery.of(context).size.width * .03,
        right: MediaQuery.of(context).size.width * .03,
      ),

      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),

        decoration: BoxDecoration(
          color: Color(0xff36176F),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
            ),

            const SizedBox(height: 24),

            const Text('Email', style: Styles.textStyle14),
            const SizedBox(height: 12),

            const CustomTextFormField(
              inputForm: 'Email',
              prefixIcon: Icon(FontAwesomeIcons.envelope),
            ),
            const SizedBox(height: 12),

            const Text('Password', style: Styles.textStyle14),
            const SizedBox(height: 12),

            const CustomTextFormField(
              inputForm: 'Password',
              prefixIcon: Icon(Icons.lock_open_sharp),
            ),

            const SizedBox(height: 55),
            const CustomBigButton(text: 'LogIn'),
          ],
        ),
      ),
    );
  }
}
