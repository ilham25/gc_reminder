import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/domain/cubit/safe_cubit.dart';
import 'package:gc_reminder/domain/dto/reminder/update_reminder_dto.dart';
import 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';
import 'package:gc_reminder/injection/injector.dart';

part 'reminder_update_bloc_state.dart';

part 'reminder_update_bloc.freezed.dart';

class ReminderUpdateBloc extends SafeCubit<ReminderUpdateBlocState> {
  ReminderUpdateBloc() : super(ReminderUpdateBlocState.initial());

  final ReminderLocalRepository _localRepository =
      inject<ReminderLocalRepository>();

  Future submit(int id, Map<String, dynamic> formData) async {
    emit(const ReminderUpdateBlocState.loading());

    final result = await _localRepository.updateReminder(
      id,
      dto: UpdateReminderDTO.fromReminderUpdateForm(formData),
    );
    result.fold(
      (left) => emit(ReminderUpdateBlocState.error(left.message)),
      (right) => emit(ReminderUpdateBlocState.success()),
    );
  }
}
