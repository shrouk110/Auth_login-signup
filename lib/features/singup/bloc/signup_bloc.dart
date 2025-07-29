import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:iti_project/features/auth/bloc/models/auth_repo.dart';
import 'package:iti_project/utils/form_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpSubmittedEvent>(_onSignUpSubmitted);
    on<SignUpReset>(_onSignUpReset);

    on<InitiSingUpScreenEvent>(_onSignUpIniti);
  }

  Future<void> _onSignUpSubmitted(
    SignUpSubmittedEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(SignUpLoading());
    await Future.delayed(const Duration(seconds: 2));
    final _AuthRepo = AuthRepo();
    try {
      final user = await _AuthRepo.SingUpWithEmailandPassword(
        email: event.email,
        password: event.password,
        name: 'name',
      );

      if (user != null) {
        emit(SignUpSuccess(user.email!));
      } else {
        emit(SignUpFailure('Email already in use'));
      }
    } on FirebaseAuthException catch (e) {
      emit(SignUpFailure('error is >>>>>> ${e.toString()}'));
    }
  }

  void _onSignUpReset(SignUpReset event, Emitter<SignUpState> emit) {
    emit(SignUpInitial());
  }

  void _onSignUpIniti(InitiSingUpScreenEvent event, Emitter<SignUpState> emit) {
    emit(SignUpInitial());
  }
}
