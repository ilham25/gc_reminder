import 'package:drift/drift.dart' as drift;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/infrastructure/database/database.dart';

part 'create_reminder_dto.freezed.dart';

@freezed
abstract class CreateReminderDTO with _$CreateReminderDTO {
  const factory CreateReminderDTO({
    required String title,
    String? description,
    required DateTime startAt,
    String? place,
    DateTime? endAt,
  }) = _CreateReminderDTO;

  factory CreateReminderDTO.fromReminderCreateForm(
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

    return CreateReminderDTO(
      title: formData["title"],
      description: formData["description"],
      startAt: startAt,
      place: formData["place"],
    );
  }
}

extension CreateReminderDTOExt on CreateReminderDTO {
  ReminderTableCompanion toReminderTableCompanion() {
    return ReminderTableCompanion(
      title: drift.Value(title),
      description: drift.Value(description),
      startAt: drift.Value(startAt),
      endAt: drift.Value(endAt),
      place: drift.Value(place),
    );
  }
}
