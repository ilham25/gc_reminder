import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:gc_reminder/core/networks/error_handler.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_model.dart';
import 'package:gc_reminder/infrastructure/database/database.dart';
import 'package:gc_reminder/infrastructure/database/extensions/reminder_table_ext.dart';

class ReminderLocalDataSource {
  final AppDatabase db;
  ReminderLocalDataSource(this.db);

  Future<Either<Failure, List<ReminderModel>>> getReminders() async {
    try {
      final query = await db.select(db.reminderTable).get();
      return Right(query.map((row) => row.toReminderModel()).toList());
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());
      return Left(
        Failure(message: e.toString(), statusCode: ResponseCode.badRequest),
      );
    }
  }
}
