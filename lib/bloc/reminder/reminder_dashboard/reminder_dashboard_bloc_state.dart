part of 'reminder_dashboard_bloc.dart';

@freezed
class ReminderDashboardBlocState with _$ReminderDashboardBlocState {
  const factory ReminderDashboardBlocState.initial() =
      _ReminderDashboardBlocStateInitialState;
  const factory ReminderDashboardBlocState.loading() =
      _GetReminderDashboardBlocStateLoadingState;
  const factory ReminderDashboardBlocState.error(String message) =
      _GetReminderDashboardBlocStateErrorState;
  const factory ReminderDashboardBlocState.loaded({
    required ReminderDashboardState state,
    ReminderDashboardActionState? action,
  }) = _GetReminderDashboardBlocStateLoadedState;
}

class ReminderDashboardState {
  final int page;
  final bool hasReachedMax;
  final bool onLoadMore;
  final List<ReminderModel> items;
  ReminderFilterModel? filter;
  final ReminderSummaryModel summary;

  ReminderDashboardState({
    this.page = 1,
    this.hasReachedMax = false,
    this.onLoadMore = false,
    required this.items,
    this.filter,
    required this.summary,
  });
}

@freezed
class ReminderDashboardActionState with _$ReminderDashboardActionState {
  const factory ReminderDashboardActionState.initial() =
      _ReminderDashboardActionInitialState;
  const factory ReminderDashboardActionState.loading() =
      _GetReminderDashboardActionLoadingState;
  const factory ReminderDashboardActionState.error(String message) =
      _GetReminderDashboardActionErrorState;
  const factory ReminderDashboardActionState.success({
    required String actionName,
  }) = _GetReminderDashboardActionLoadedState;
}
