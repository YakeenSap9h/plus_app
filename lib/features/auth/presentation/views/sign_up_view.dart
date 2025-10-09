import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plus_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:plus_app/features/auth/presentation/views/widgets/sign_up_body.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(body: SignUpBody()),
    );
  }
}
