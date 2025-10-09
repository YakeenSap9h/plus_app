import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:plus_app/consts.dart';
import 'package:plus_app/core/utils/app_router.dart';
import 'package:plus_app/core/utils/styles.dart';
import 'package:plus_app/core/utils/widgets/custom_button_on_press.dart';
import 'package:plus_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:plus_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:plus_app/features/auth/presentation/views/widgets/custom_big_button.dart';

class SignUpEnterInfoSection extends StatefulWidget {
  const SignUpEnterInfoSection({super.key});

  @override
  State<SignUpEnterInfoSection> createState() => _SignUpEnterInfoSectionState();
}

class _SignUpEnterInfoSectionState extends State<SignUpEnterInfoSection> {
  String? userEmail;

  String? userPassWord;

  GlobalKey<FormState> formkey = GlobalKey();

  String? email;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * .03,
        right: MediaQuery.of(context).size.width * .03,
        top: 24,
        bottom: 50,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),

        decoration: BoxDecoration(
          color: Color(0xff36176F),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Form(
          key: formkey,
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
                      colors: [kPrimarDarkPurpleBlue],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [.2],
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
                      colors: [Colors.purple, kPrimaryPurple],

                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: const [.2, .6],
                    ),
                  ),
                ],
              ),

              //  !  const SizedBox(height: 24),
              // !! const SignUpNamesFields(),
              //! const SizedBox(height: 12),
              const Text('Email', style: Styles.textStyle14),
              const SizedBox(height: 12),

              CustomTextFormField(
                onChanged: (data) {
                  userEmail = data;
                },
                inputForm: 'Email',
                prefixIcon: const Icon(FontAwesomeIcons.envelope),
              ),
              const SizedBox(height: 12),

              const Text('Password', style: Styles.textStyle14),
              const SizedBox(height: 12),

              CustomTextFormField(
                obscureText: true,
                onChanged: (data) {
                  userPassWord = data;
                },
                inputForm: 'Password',
                prefixIcon: const Icon(Icons.lock_open_sharp),
              ),

              const SizedBox(height: 55),

              CustomBigButton(
                text: 'SignUp',
                onPressed: () async {
                  if (formkey.currentState!.validate()) {
                    BlocProvider.of<AuthCubit>(context).userRegister(
                      userEmail: userEmail,
                      userPassWord: userPassWord,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> userRegister() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: userEmail!,
      password: userPassWord!,
    );
  }
}
