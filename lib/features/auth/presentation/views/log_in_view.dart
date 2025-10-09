import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plus_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:plus_app/features/auth/presentation/views/widgets/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(body: LogInViewBody()),
    );
  }
}
