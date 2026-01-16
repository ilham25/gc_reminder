part of 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';

class ReminderLocalRepositoryImpl implements ReminderLocalRepository {
  final ReminderLocalDataSource dataSource;
  ReminderLocalRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, List<ReminderModel>>> getReminders() =>
      dataSource.getReminders();

  @override
  Future<Either<Failure, void>> createReminder({
    required CreateReminderDTO dto,
  }) => dataSource.createReminder(dto: dto);

  @override
  Future<Either<Failure, void>> updateReminder(
    int id, {
    required UpdateReminderDTO dto,
  }) => dataSource.updateReminder(id, dto: dto);

  @override
  Future<Either<Failure, void>> deleteReminder(int id) =>
      dataSource.deleteReminder(id);
  @override
  Future<Either<Failure, void>> deleteReminders(List<int> ids) =>
      dataSource.deleteReminders(ids);
}
