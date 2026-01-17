import 'package:drift/drift.dart' as drift;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/infrastructure/database/database.dart';

part 'update_reminder_dto.freezed.dart';

@freezed
abstract class UpdateReminderDTO with _$UpdateReminderDTO {
  const factory UpdateReminderDTO({
    String? title,
    String? description,
    DateTime? startAt,
    String? place,
    DateTime? endAt,
  }) = _UpdateReminderDTO;

  factory UpdateReminderDTO.fromReminderUpdateForm(
    Map<String, dynamic> formData,
  ) {
    DateTime startAt = formData["startDate"];

    final startTime = formData["startTime"] as DateTime?;
    if (startTime != null) {
      startAt = DateTime(
        startAt.year,
        startAt.month,
        startAt.day,
        startTime.hour,
        startTime.minute,
        startTime.second,
      );
    }

    return UpdateReminderDTO(
      title: formData["title"],
      description: formData["description"],
      startAt: startAt,
      place: formData["place"],
    );
  }
}

extension UpdateReminderDTOExt on UpdateReminderDTO {
  ReminderTableCompanion toReminderTableCompanion() {
    return ReminderTableCompanion(
      title: drift.Value.absentIfNull(title),
      description: drift.Value.absentIfNull(description),
      startAt: drift.Value.absentIfNull(startAt),
      endAt: drift.Value.absentIfNull(endAt),
      place: drift.Value.absentIfNull(place),
    );
  }
}
