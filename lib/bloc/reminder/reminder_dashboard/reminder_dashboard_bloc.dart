import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/application/reminder/usecases/delete_reminders_usecase.dart';
import 'package:gc_reminder/domain/cubit/safe_cubit.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_filter_model.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_model.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_summary_model.dart';
import 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';
import 'package:gc_reminder/infrastructure/database/database.dart';
import 'package:gc_reminder/injection/injector.dart';

part 'reminder_dashboard_bloc_state.dart';

part 'reminder_dashboard_bloc.freezed.dart';

class ReminderDashboardBloc extends SafeCubit<ReminderDashboardBlocState> {
  ReminderDashboardBloc() : super(const ReminderDashboardBlocState.initial());

  final ReminderLocalRepository _localRepository =
      inject<ReminderLocalRepository>();
  final DeleteRemindersUseCase _deleteRemindersUseCase =
      inject<DeleteRemindersUseCase>();

  Future getData({ReminderFilterModel? filter}) async {
    state.maybeWhen(
      orElse: () {},
      initial: () {
        emit(const ReminderDashboardBlocState.loading());
      },
    );

    debugPrint("filter ${filter?.date} ${filter?.type} ${filter?.status}");

    final getSummary = await _localRepository.getSummary(date: DateTime.now());
    final summaryResult = getSummary.fold((left) {
      emit(ReminderDashboardBlocState.error(left.message));
      return null;
    }, (r) => r);
    if (summaryResult == null) return;

    final result = await _localRepository.getReminders(filter: filter);
    result.fold(
      (left) => emit(ReminderDashboardBlocState.error(left.message)),
      (items) => emit(
        ReminderDashboardBlocState.loaded(
          state: ReminderDashboardState(
            items: items,
            filter: filter,
            summary: summaryResult,
          ),
        ),
      ),
    );
  }

  Future refresh() async {
    state.maybeWhen(
      orElse: () {},
      loaded: (state, action) {
        getData(filter: state.filter);
      },
    );
  }

  Future delete(List<int> ids) async {
    await state.maybeWhen(
      orElse: () {},
      loaded: (oldState, action) async {
        emit(
          ReminderDashboardBlocState.loaded(
            state: oldState,
            action: ReminderDashboardActionState.loading(),
          ),
        );

        final mutateDeleteReminders = await _deleteRemindersUseCase.call(ids);

        mutateDeleteReminders.fold(
          (left) => emit(
            ReminderDashboardBlocState.loaded(
              state: oldState,
              action: ReminderDashboardActionState.error(left.message),
            ),
          ),
          (right) => ReminderDashboardBlocState.loaded(
            state: oldState,
            action: ReminderDashboardActionState.success(actionName: "delete"),
          ),
        );
      },
    );
  }

  void setDate(DateTime? date) {
    state.maybeWhen(
      orElse: () {},
      loaded: (state, action) {
        if (state.filter == null) {
          getData(filter: ReminderFilterModel(date: date));
        } else {
          getData(
            filter: ReminderFilterModel(
              date: date,
              type: state.filter?.type,
              status: state.filter?.status,
            ),
          );
        }
      },
    );
  }

  void setFilter({ReminderType? type, ReminderStatus? status}) {
    state.maybeWhen(
      orElse: () {},
      loaded: (state, action) {
        if (state.filter == null) {
          getData(
            filter: ReminderFilterModel(type: type, status: status),
          );
        } else {
          getData(
            filter: ReminderFilterModel(
              date: state.filter?.date,
              type: type,
              status: status,
            ),
          );
        }
      },
    );
  }

  void clearFilter() {
    state.maybeWhen(
      orElse: () {},
      loaded: (state, action) {
        getData(filter: null);
      },
    );
  }
}
