import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/features/auth/bloc/models/auth_repo.dart';

import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButttonPressedEvent>(_onLogin);
    on<LogoutButttonPressedEvent>(_onLogout);
  }

  Future<void> _onLogin(
    LoginButttonPressedEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoadingState());

    if (event.email.isEmpty || event.password.isEmpty) {
      emit(LoginFaildState('Please enter both email and password.'));
      return;
    }

    final authRepo = AuthRepo();

    try {
      final user = await authRepo.signInWithEmailandPassword(
        email: event.email.trim(),
        password: event.password.trim(),
      );

      if (user == null) {
        emit(LoginFaildState('Invalid email or password.'));
        return;
      }

      emit(LoginSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFaildState('No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(LoginFaildState('Incorrect password.'));
      } else if (e.code == 'user-disabled') {
        emit(LoginFaildState('This account has been disabled.'));
      } else {
        emit(LoginFaildState('Login failed: ${e.message}'));
      }
    } catch (e) {
      emit(LoginFaildState('error: ${e.toString()}'));
    }
  }

  Future<void> _onLogout(
    LogoutButttonPressedEvent event,
    Emitter<LoginState> emit,
  ) async {
    final authRepo = AuthRepo();
    await authRepo.signOut();
    emit(LoginInitial());
  }
}
