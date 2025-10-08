import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

    Future<void> userLogIn({
    required String userEmail,
    required String userPassWord,
  }) async {
    emit(LoginLoading());

    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: userEmail,
            password: userPassWord,
          );
      emit(LogInSuccess());
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'user-not-found') {
        emit(LogInFailure("user Not found"));
      } else if (e.code == 'wrong-password') {
        emit(LogInFailure("Wrong pass-Word"));
      }
    } catch (e) {
      emit(LogInFailure("somthing went wrong"));
    }
  }



  Future<void> userRegister({String? userEmail, String? userPassWord}) async {
    emit(RegisterLoading());
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: userEmail!,
            password: userPassWord!,
          );
      emit(RegisterSuccess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak-password') {
        emit(RegisterFailure( "Weak passWord"));
      } else if (ex.code == 'email-already-in-use') {
        emit(RegisterFailure( "email already in use "));
      }
    } catch (ex) {
      emit(RegisterFailure("some thing went wrong "));
    }
  }
}
