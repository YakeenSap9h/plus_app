import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:plus_app/core/utils/app_router.dart';
import 'package:plus_app/core/utils/styles.dart';
import 'package:plus_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:plus_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:plus_app/features/auth/presentation/views/widgets/custom_big_button.dart';
import 'package:plus_app/features/auth/presentation/views/widgets/custom_log_in_sign_up_row_buttons.dart';

class EnterInfoSection extends StatefulWidget {
  const EnterInfoSection({super.key});

  @override
  State<EnterInfoSection> createState() => _EnterInfoSectionState();
}

class _EnterInfoSectionState extends State<EnterInfoSection> {
  String? userEmail;

  String? userPassWord;

  GlobalKey<FormState> formkey = GlobalKey();

  bool isLoading = false;
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
        child: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is LogInSuccess) {
              GoRouter.of(context).push(AppRouter.kHomeView);
            }
          },
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomLogInSignUpRowButtons(),

                const SizedBox(height: 24),

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
                  inputForm: 'Password',
                  onChanged: (data) {
                    userPassWord = data;
                  },
                  prefixIcon: const Icon(Icons.lock_open_sharp),
                ),

                SizedBox(height: 55),
                CustomBigButton(
                  text: 'LogIn',
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      BlocProvider.of<AuthCubit>(context).userLogIn(
                        userEmail: userEmail!,
                        userPassWord: userPassWord!,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> userLogIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: userEmail!,
      password: userPassWord!,
    );
  }
}
