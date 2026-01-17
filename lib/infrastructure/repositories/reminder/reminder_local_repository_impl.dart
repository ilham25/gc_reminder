part of 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';

class ReminderLocalRepositoryImpl implements ReminderLocalRepository {
  final ReminderLocalDataSource dataSource;
  ReminderLocalRepositoryImpl(this.dataSource);

  final ScheduleNotificationUseCase _scheduleNotificationUseCase =
      inject<ScheduleNotificationUseCase>();
  final DeleteNotificationsUseCase _deleteNotificationsUseCase =
      inject<DeleteNotificationsUseCase>();

  @override
  Future<Either<Failure, List<ReminderModel>>> getReminders() =>
      dataSource.getReminders();

  @override
  Future<Either<Failure, int>> createReminder({
    required CreateReminderDTO dto,
  }) async {
    final mutateCreateReminder = await dataSource.createReminder(dto: dto);
    return mutateCreateReminder.fold((left) => Left(left), (id) async {
      final mutateScheduleNotification = await _scheduleNotificationUseCase
          .call(id, title: dto.title, body: dto.description, date: dto.startAt);

      return mutateScheduleNotification.fold(
        (left) => Left(
          Failure(message: left.message, statusCode: ResponseCode.defaultError),
        ),
        (right) => Right(id),
      );
    });
  }

  @override
  Future<Either<Failure, void>> updateReminder(
    int id, {
    required UpdateReminderDTO dto,
  }) async {
    final mutateUpdateReminder = await dataSource.updateReminder(id, dto: dto);
    return mutateUpdateReminder.fold((left) => Left(left), (right) async {
      final mutateDeleteNotification = await _deleteNotificationsUseCase.call([
        id,
      ]);

      return mutateDeleteNotification.fold(
        (left) => Left(
          Failure(message: left.message, statusCode: ResponseCode.defaultError),
        ),
        (right) async {
          final mutateScheduleNotification = await _scheduleNotificationUseCase
              .call(
                id,
                title: dto.title!,
                body: dto.description,
                date: dto.startAt!,
              );
          return mutateScheduleNotification.fold(
            (left) => Left(
              Failure(
                message: left.message,
                statusCode: ResponseCode.defaultError,
              ),
            ),
            (right) => Right(null),
          );
        },
      );
    });
  }

  @override
  Future<Either<Failure, void>> deleteReminder(int id) =>
      dataSource.deleteReminder(id);

  @override
  Future<Either<Failure, void>> deleteReminders(List<int> ids) async {
    final mutateDeleteReminders = await dataSource.deleteReminders(ids);
    return mutateDeleteReminders.fold((left) => Left(left), (right) async {
      final mutateDeleteSchedules = await _deleteNotificationsUseCase.call(ids);

      return mutateDeleteSchedules.fold(
        (left) => Left(
          Failure(message: left.message, statusCode: ResponseCode.defaultError),
        ),
        (right) => Right(null),
      );
    });
  }
}
