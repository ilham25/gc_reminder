import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/domain/cubit/safe_cubit.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_summary_model.dart';
import 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';
import 'package:gc_reminder/injection/injector.dart';

part 'reminder_summary_bloc_state.dart';

part 'reminder_summary_bloc.freezed.dart';

class ReminderSummaryBloc extends SafeCubit<ReminderSummaryBlocState> {
  ReminderSummaryBloc() : super(ReminderSummaryBlocState.initial());

  final ReminderLocalRepository _localRepository =
      inject<ReminderLocalRepository>();

  Future getData({DateTime? date}) async {
    final result = await _localRepository.getSummary(date: date);
    result.fold(
      (left) => emit(ReminderSummaryBlocState.error(left.message)),
      (summary) => emit(
        ReminderSummaryBlocState.loaded(
          state: ReminderSummaryState(summary: summary),
        ),
      ),
    );
  }

  Future refresh() async {
    await getData();
  }
}
