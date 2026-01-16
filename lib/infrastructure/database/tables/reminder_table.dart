part of '../database.dart';

class ReminderTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text().withDefault(const Constant(''))();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get doneAt => dateTime().nullable()();
}
