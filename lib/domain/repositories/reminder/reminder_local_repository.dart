import 'package:dartz/dartz.dart';
import 'package:gc_reminder/core/networks/error_handler.dart';
import 'package:gc_reminder/domain/dto/reminder/create_reminder_dto.dart';
import 'package:gc_reminder/domain/dto/reminder/update_reminder_dto.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_model.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_summary_model.dart';
import 'package:gc_reminder/infrastructure/datasource/reminder/reminder_local_datasource.dart';

part 'package:gc_reminder/infrastructure/repositories/reminder/reminder_local_repository_impl.dart';

abstract class ReminderLocalRepository {
  Future<Either<Failure, List<ReminderModel>>> getReminders();
  Future<Either<Failure, ReminderModel>> getReminder(int id);
  Future<Either<Failure, int>> createReminder({required CreateReminderDTO dto});
  Future<Either<Failure, void>> updateReminder(
    int id, {
    required UpdateReminderDTO dto,
  });
  Future<Either<Failure, void>> deleteReminder(int id);
  Future<Either<Failure, void>> deleteReminders(List<int> ids);
  Future<Either<Failure, ReminderSummaryModel>> getSummary({DateTime? date});
}
