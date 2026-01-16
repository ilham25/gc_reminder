import 'package:gc_reminder/domain/models/reminder/reminder_model.dart';
import 'package:gc_reminder/infrastructure/database/database.dart';

extension ReminderTableExt on ReminderTableData {
  ReminderModel toReminderModel() {
    return ReminderModel(
      id: id,
      title: title,
      description: description,
      createdAt: createdAt ?? DateTime.now(),
      doneAt: doneAt,
    );
  }
}
