part of '../database.dart';

class ReminderTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description =>
      text().withDefault(const Constant('')).nullable()();
  TextColumn get type => textEnum<ReminderType>()();

  TextColumn get place => text().nullable()();
  RealColumn get latitude => real().nullable()();
  RealColumn get longitude => real().nullable()();

  DateTimeColumn get startAt => dateTime()();
  DateTimeColumn get endAt => dateTime().nullable()();

  DateTimeColumn get doneAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}

enum ReminderType { time, location }
