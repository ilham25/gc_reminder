import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/application/reminder/usecases/update_reminder_usecase.dart';
import 'package:gc_reminder/domain/cubit/safe_cubit.dart';
import 'package:gc_reminder/domain/dto/reminder/update_reminder_dto.dart';
import 'package:gc_reminder/injection/injector.dart';

part 'reminder_update_bloc_state.dart';

part 'reminder_update_bloc.freezed.dart';

class ReminderUpdateBloc extends SafeCubit<ReminderUpdateBlocState> {
  ReminderUpdateBloc() : super(ReminderUpdateBlocState.initial());

  final UpdateReminderUseCase _useCase = inject<UpdateReminderUseCase>();

  Future submit(int id, Map<String, dynamic> formData) async {
    emit(const ReminderUpdateBlocState.loading());

    final dto = UpdateReminderDTO.fromReminderUpdateForm(formData);

    final result = await _useCase.call(id, dto: dto.copyWith(doneAt: null));
    result.fold(
      (left) => emit(ReminderUpdateBlocState.error(left.message)),
      (right) => emit(ReminderUpdateBlocState.success()),
    );
  }
}
