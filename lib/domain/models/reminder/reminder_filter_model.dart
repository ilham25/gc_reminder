import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/infrastructure/database/database.dart';

part 'reminder_filter_model.freezed.dart';

@freezed
abstract class ReminderFilterModel with _$ReminderFilterModel {
  const factory ReminderFilterModel({
    DateTime? date,
    ReminderType? type,
    ReminderStatus? status,
  }) = _ReminderFilterModel;
}

enum ReminderStatus { ongoing, completed }
