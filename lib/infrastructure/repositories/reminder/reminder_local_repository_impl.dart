part of 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';

class ReminderLocalRepositoryImpl implements ReminderLocalRepository {
  final ReminderLocalDataSource dataSource;
  ReminderLocalRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, List<ReminderModel>>> getReminders() =>
      dataSource.getReminders();
}
