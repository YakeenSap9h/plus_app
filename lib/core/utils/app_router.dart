import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plus_app/features/auth/presentation/views/log_in_view.dart';
import 'package:plus_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:plus_app/features/home/presentation/views/home_view.dart';
import 'package:plus_app/features/splash/presentation/views/widgets/splash_view.dart';

abstract class AppRouter {
  static const kLogInView = '/logInView';
  static const kSignUpView = '/signUpView';
  static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: kLogInView,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const LogInView(),
          transitionDuration: const Duration(milliseconds: 600),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: kSignUpView,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const SignUpView(),
          transitionDuration: const Duration(milliseconds: 600),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) =>  HomeView(),
      ),
    ],
  );
}
