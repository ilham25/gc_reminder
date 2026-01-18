part of 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';

class ReminderLocalRepositoryImpl implements ReminderLocalRepository {
  final ReminderLocalDataSource dataSource;
  ReminderLocalRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, List<ReminderModel>>> getReminders({
    ReminderFilterModel? filter,
  }) => dataSource.getReminders(filter: filter);

  @override
  Future<Either<Failure, ReminderModel>> getReminder(int id) =>
      dataSource.getReminder(id);

  @override
  Future<Either<Failure, int>> createReminder({
    required CreateReminderDTO dto,
  }) async {
    return dataSource.createReminder(dto: dto);
  }

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

  @override
  Future<Either<Failure, ReminderSummaryModel>> getSummary({DateTime? date}) =>
      dataSource.getSummary(date: date);
}
