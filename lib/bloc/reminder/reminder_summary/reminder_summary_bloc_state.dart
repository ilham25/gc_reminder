part of 'reminder_summary_bloc.dart';

// Created on 18 00:37 by USER

@freezed
class ReminderSummaryBlocState with _$ReminderSummaryBlocState {
  const factory ReminderSummaryBlocState.initial() =
      _ReminderSummaryBlocStateInitialState;
  const factory ReminderSummaryBlocState.loading() =
      _GetReminderSummaryBlocStateLoadingState;
  const factory ReminderSummaryBlocState.error(String message) =
      _GetReminderSummaryBlocStateErrorState;
  const factory ReminderSummaryBlocState.loaded({
    required ReminderSummaryState state,
  }) = _GetReminderSummaryBlocStateLoadedState;
}

class ReminderSummaryState {
  final ReminderSummaryModel summary;
  const ReminderSummaryState({required this.summary});
}
