import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/domain/cubit/safe_cubit.dart';
import 'package:gc_reminder/domain/dto/reminder/create_reminder_dto.dart';
import 'package:gc_reminder/domain/notification/usecases/schedule_notification_usecase.dart';
import 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';
import 'package:gc_reminder/injection/injector.dart';

part 'reminder_create_bloc_state.dart';

part 'reminder_create_bloc.freezed.dart';

class ReminderCreateBloc extends SafeCubit<ReminderCreateBlocState> {
  ReminderCreateBloc() : super(ReminderCreateBlocState.initial());

  final ReminderLocalRepository _localRepository =
      inject<ReminderLocalRepository>();
  final ScheduleNotificationUseCase _scheduleNotificationUseCase =
      inject<ScheduleNotificationUseCase>();

  Future submit(Map<String, dynamic> formData) async {
    emit(const ReminderCreateBlocState.loading());

    final dto = CreateReminderDTO.fromReminderCreateForm(formData);

    final result = await _localRepository.createReminder(dto: dto);
    await result.fold(
      (left) async => emit(ReminderCreateBlocState.error(left.message)),
      (id) async {
        final mutateScheduleNotification = await _scheduleNotificationUseCase
            .call(
              id,
              title: dto.title,
              body: dto.description,
              date: dto.startAt,
            );

        mutateScheduleNotification.fold(
          (left) => emit(ReminderCreateBlocState.error(left.message)),
          (right) => emit(ReminderCreateBlocState.success()),
        );
      },
    );
  }
}
