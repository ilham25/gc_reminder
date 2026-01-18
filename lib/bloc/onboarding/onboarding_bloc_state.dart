part of 'onboarding_bloc.dart';

// Created on 18 13:31 by USER

@freezed
class OnboardingBlocState with _$OnboardingBlocState {
  const factory OnboardingBlocState.initial() =
      _OnboardingBlocStateInitialState;
  const factory OnboardingBlocState.loading() =
      _GetOnboardingBlocStateLoadingState;
  const factory OnboardingBlocState.error(String message) =
      _GetOnboardingBlocStateErrorState;
  const factory OnboardingBlocState.success() =
      _GetOnboardingBlocStateLoadedState;
}
