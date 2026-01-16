part of 'reminder_update_bloc.dart';

@freezed
class ReminderUpdateBlocState with _$ReminderUpdateBlocState {
  const factory ReminderUpdateBlocState.initial() =
      _ReminderUpdateBlocStateInitialState;
  const factory ReminderUpdateBlocState.loading() =
      _GetReminderUpdateBlocStateLoadingState;
  const factory ReminderUpdateBlocState.error(String message) =
      _GetReminderUpdateBlocStateErrorState;
  const factory ReminderUpdateBlocState.success() =
      _GetReminderUpdateBlocStateLoadedState;
}
