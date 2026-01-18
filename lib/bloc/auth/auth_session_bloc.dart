import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/domain/cubit/safe_cubit.dart';
import 'package:gc_reminder/injection/injector.dart';
import 'package:gc_reminder/domain/repositories/auth/auth_repository.dart';

part 'auth_session_state.dart';

part 'auth_session_bloc.freezed.dart';

class AuthSessionBloc extends SafeCubit<AuthSessionBlocState> {
  AuthSessionBloc() : super(AuthSessionBlocState.initial());
  final AuthRepository authRepository = inject<AuthRepository>();

  Future<void> checkSession() async {
    debugPrint("checkSession");
    emit(AuthSessionBlocState.loading());
    try {
      final isOnboardingCompleted = await authRepository
          .getIsOnboardingCompleted();
      emit(
        AuthSessionBlocState.loaded(
          state: AuthSessionState(isOnboardingCompleted: isOnboardingCompleted),
        ),
      );
    } catch (e) {
      emit(AuthSessionBlocState.error(e.toString()));
    }
  }

  Future<void> setOnboardingCompleted() async {
    await state.maybeWhen(
      orElse: () {},
      loaded: (state) async {
        await authRepository.setIsOnboardingCompleted();
        emit(
          AuthSessionBlocState.loaded(
            state: AuthSessionState(isOnboardingCompleted: true),
          ),
        );
      },
    );
  }
}
