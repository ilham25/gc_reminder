import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/domain/cubit/safe_cubit.dart';
import 'package:gc_reminder/domain/dto/reminder/update_reminder_dto.dart';
import 'package:gc_reminder/domain/location/services/location_reminder_service.dart';
import 'package:gc_reminder/domain/notification/usecases/schedule_notification_usecase.dart';
import 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';
import 'package:gc_reminder/injection/injector.dart';

part 'reminder_update_bloc_state.dart';

part 'reminder_update_bloc.freezed.dart';

class ReminderUpdateBloc extends SafeCubit<ReminderUpdateBlocState> {
  ReminderUpdateBloc() : super(ReminderUpdateBlocState.initial());

  final ReminderLocalRepository _localRepository =
      inject<ReminderLocalRepository>();
  final ScheduleNotificationUseCase _scheduleNotificationUseCase =
      inject<ScheduleNotificationUseCase>();
  final LocationReminderService _locationReminderService =
      inject<LocationReminderService>();

  Future submit(int id, Map<String, dynamic> formData) async {
    emit(const ReminderUpdateBlocState.loading());

    final dto = UpdateReminderDTO.fromReminderUpdateForm(formData);
    if (dto.type == .time && DateTime.now().isAfter(dto.startAt!)) {
      emit(ReminderUpdateBlocState.error("Start date must be in the future"));
      return;
    }

    final mutateUpdateReminder = await _localRepository.updateReminder(
      id,
      dto: dto.copyWith(doneAt: null),
    );
    await mutateUpdateReminder.fold(
      (left) async => emit(ReminderUpdateBlocState.error(left.message)),
      (right) async {
        if (dto.type == .time) {
          final mutateScheduleNotification = await _scheduleNotificationUseCase
              .call(
                id,
                title: dto.title!,
                body: dto.description,
                date: dto.startAt!,
              );
          mutateScheduleNotification.fold(
            (left) => emit(ReminderUpdateBlocState.error(left.message)),
            (right) => emit(ReminderUpdateBlocState.success()),
          );
          return;
        }

        final createGeofence = await _locationReminderService.createGeofence(
          id,
        );

        createGeofence.fold(
          (left) => emit(ReminderUpdateBlocState.error(left.message)),
          (right) => emit(ReminderUpdateBlocState.success()),
        );
      },
    );
  }
}
