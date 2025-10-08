part of 'auth_cubit.dart';

@immutable
sealed class AuthState {
  const AuthState();
}

final class AuthInitial extends AuthState {}

final class RegisterLoading extends AuthState {}

final class RegisterSuccess extends AuthState {}

class RegisterFailure extends AuthState {
  final String errMessage;
  const RegisterFailure(this.errMessage);
}

final class LogInSuccess extends AuthState {}

final class LogInFailure extends AuthState {
  final String errmessage;
  const LogInFailure( this.errmessage);
}

final class LoginLoading extends AuthState {}
