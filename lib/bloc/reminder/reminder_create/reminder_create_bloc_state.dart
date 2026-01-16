part of 'reminder_create_bloc.dart';

// Created on 16 21:41 by USER

@freezed
class ReminderCreateBlocState with _$ReminderCreateBlocState {
  const factory ReminderCreateBlocState.initial() =
      _ReminderCreateBlocStateInitialState;
  const factory ReminderCreateBlocState.loading() =
      _GetReminderCreateBlocStateLoadingState;
  const factory ReminderCreateBlocState.error(String message) =
      _GetReminderCreateBlocStateErrorState;
  const factory ReminderCreateBlocState.success() =
      _GetReminderCreateBlocStateLoadedState;
}
