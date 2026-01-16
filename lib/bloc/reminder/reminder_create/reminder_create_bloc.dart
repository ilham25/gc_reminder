import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/domain/cubit/safe_cubit.dart';
import 'package:gc_reminder/domain/dto/reminder/create_reminder_dto.dart';
import 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';
import 'package:gc_reminder/injection/injector.dart';

part 'reminder_create_bloc_state.dart';

part 'reminder_create_bloc.freezed.dart';

class ReminderCreateBloc extends SafeCubit<ReminderCreateBlocState> {
  ReminderCreateBloc() : super(ReminderCreateBlocState.initial());

  final ReminderLocalRepository _localRepository =
      inject<ReminderLocalRepository>();

  Future submit(Map<String, dynamic> formData) async {
    emit(const ReminderCreateBlocState.loading());

    final result = await _localRepository.createReminder(
      dto: CreateReminderDTO.fromReminderCreateForm(formData),
    );
    result.fold(
      (left) => emit(ReminderCreateBlocState.error(left.message)),
      (right) => emit(ReminderCreateBlocState.success()),
    );
  }
}
