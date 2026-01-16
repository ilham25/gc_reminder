part of 'reminder_list_bloc.dart';

@freezed
class ReminderListBlocState with _$ReminderListBlocState {
  const factory ReminderListBlocState.initial() =
      _ReminderListBlocStateInitialState;
  const factory ReminderListBlocState.loading() =
      _GetReminderListBlocStateLoadingState;
  const factory ReminderListBlocState.error(String message) =
      _GetReminderListBlocStateErrorState;
  const factory ReminderListBlocState.loaded({
    required ReminderListState state,
    ReminderListActionState? action,
  }) = _GetReminderListBlocStateLoadedState;
}

class ReminderListState {
  final int page;
  final bool hasReachedMax;
  final bool onLoadMore;
  final List<ReminderModel> items;

  ReminderListState({
    this.page = 1,
    this.hasReachedMax = false,
    this.onLoadMore = false,
    required this.items,
  });
}

@freezed
class ReminderListActionState with _$ReminderListActionState {
  const factory ReminderListActionState.initial() =
      _ReminderListActionInitialState;
  const factory ReminderListActionState.loading() =
      _GetReminderListActionLoadingState;
  const factory ReminderListActionState.error(String message) =
      _GetReminderListActionErrorState;
  const factory ReminderListActionState.success({required String actionName}) =
      _GetReminderListActionLoadedState;
}
