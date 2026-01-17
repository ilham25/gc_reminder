import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:gc_reminder/core/networks/error_handler.dart';
import 'package:gc_reminder/domain/dto/reminder/create_reminder_dto.dart';
import 'package:gc_reminder/domain/dto/reminder/update_reminder_dto.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_model.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_summary_model.dart';
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

  Future<Either<Failure, ReminderModel>> getReminder(int id) async {
    try {
      final query = await (db.select(
        db.reminderTable,
      )..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
      if (query == null) {
        return Left(
          Failure(
            message: "Reminder not found",
            statusCode: ResponseCode.notFound,
          ),
        );
      }

      return Right(query.toReminderModel());
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());
      return Left(
        Failure(message: e.toString(), statusCode: ResponseCode.badRequest),
      );
    }
  }

  Future<Either<Failure, int>> createReminder({
    required CreateReminderDTO dto,
  }) async {
    try {
      final result = await db
          .into(db.reminderTable)
          .insert(dto.toReminderTableCompanion());
      return Right(result);
    } catch (e) {
      return Left(
        Failure(message: e.toString(), statusCode: ResponseCode.badRequest),
      );
    }
  }

  Future<Either<Failure, void>> updateReminder(
    int id, {
    required UpdateReminderDTO dto,
  }) async {
    try {
      await (db.update(db.reminderTable)..where((tbl) => tbl.id.equals(id)))
          .write(dto.toReminderTableCompanion());
      return const Right(null);
    } catch (e) {
      return Left(
        Failure(message: e.toString(), statusCode: ResponseCode.badRequest),
      );
    }
  }

  Future<Either<Failure, void>> deleteReminder(int id) async {
    try {
      await (db.delete(
        db.reminderTable,
      )..where((tbl) => tbl.id.equals(id))).go();
      return const Right(null);
    } catch (e) {
      return Left(
        Failure(message: e.toString(), statusCode: ResponseCode.badRequest),
      );
    }
  }

  Future<Either<Failure, void>> deleteReminders(List<int> ids) async {
    try {
      await (db.delete(
        db.reminderTable,
      )..where((tbl) => tbl.id.isIn(ids))).go();
      return const Right(null);
    } catch (e) {
      return Left(
        Failure(message: e.toString(), statusCode: ResponseCode.badRequest),
      );
    }
  }

  Future<Either<Failure, ReminderSummaryModel>> getSummary({
    DateTime? date,
  }) async {
    date ??= DateTime.now();
    try {
      final completed = await _getCompletedRemindersCount(date);
      final ongoing = await _getOngoingRemindersCount(date);

      return Right(
        ReminderSummaryModel(
          completed: completed,
          ongoing: ongoing,
          total: completed + ongoing,
        ),
      );
    } catch (e) {
      return Left(
        Failure(message: e.toString(), statusCode: ResponseCode.badRequest),
      );
    }
  }

  // Count completed reminders
  Future<int> _getCompletedRemindersCount(DateTime date) async {
    final query = db.selectOnly(db.reminderTable)
      ..addColumns([db.reminderTable.id.count()])
      ..where(
        db.reminderTable.type
            .equalsValue(ReminderType.location)
            .caseMatch(
              when: {const Constant(true): db.reminderTable.doneAt.isNotNull()},
              orElse: db.reminderTable.startAt.isSmallerThanValue(date),
            ),
      );

    final result = await query.getSingle();
    return result.read(db.reminderTable.id.count()) ?? 0;
  }

  // Count ongoing reminders
  Future<int> _getOngoingRemindersCount(DateTime date) async {
    final query = db.selectOnly(db.reminderTable)
      ..addColumns([db.reminderTable.id.count()])
      ..where(
        db.reminderTable.type
            .equalsValue(ReminderType.location)
            .caseMatch(
              when: {const Constant(true): db.reminderTable.doneAt.isNull()},
              orElse: db.reminderTable.startAt.isBiggerThanValue(date),
            ),
      );

    final result = await query.getSingle();
    return result.read(db.reminderTable.id.count()) ?? 0;
  }
}
