import 'package:dartz/dartz.dart';
import 'package:gc_reminder/core/networks/error_handler.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_model.dart';
import 'package:gc_reminder/infrastructure/datasource/reminder/reminder_local_datasource.dart';

part 'package:gc_reminder/infrastructure/repositories/reminder/reminder_local_repository_impl.dart';

abstract class ReminderLocalRepository {
  Future<Either<Failure, List<ReminderModel>>> getReminders();
}
