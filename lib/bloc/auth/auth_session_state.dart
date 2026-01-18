// Created on 29-08-2024 10:33 by mac

part of 'auth_session_bloc.dart';

// Created on 18 13:18 by USER

@freezed
class AuthSessionBlocState with _$AuthSessionBlocState {
  const factory AuthSessionBlocState.initial() = _AuthSessionBlocInitialState;
  const factory AuthSessionBlocState.loading() =
      _GetAuthSessionBlocLoadingState;
  const factory AuthSessionBlocState.error(String message) =
      _GetAuthSessionBlocErrorState;
  const factory AuthSessionBlocState.loaded({required AuthSessionState state}) =
      _GetAuthSessionBlocLoadedState;
}

class AuthSessionState {
  final bool isOnboardingCompleted;

  AuthSessionState({this.isOnboardingCompleted = false});
}
