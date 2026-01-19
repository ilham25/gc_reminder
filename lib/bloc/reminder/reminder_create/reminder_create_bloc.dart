import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/application/reminder/usecases/create_reminder_usecase.dart';
import 'package:gc_reminder/domain/cubit/safe_cubit.dart';
import 'package:gc_reminder/domain/dto/reminder/create_reminder_dto.dart';
import 'package:gc_reminder/injection/injector.dart';

part 'reminder_create_bloc_state.dart';

part 'reminder_create_bloc.freezed.dart';

class ReminderCreateBloc extends SafeCubit<ReminderCreateBlocState> {
  ReminderCreateBloc() : super(ReminderCreateBlocState.initial());

  final CreateReminderUseCase _useCase = inject<CreateReminderUseCase>();

  Future submit(Map<String, dynamic> formData) async {
    emit(const ReminderCreateBlocState.loading());

    final dto = CreateReminderDTO.fromReminderCreateForm(formData);

    final result = await _useCase.call(dto: dto);
    result.fold(
      (left) => emit(ReminderCreateBlocState.error(left.message)),
      (right) => emit(ReminderCreateBlocState.success()),
    );
  }
}
