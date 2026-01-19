import 'package:gc_reminder/domain/dto/reminder/update_reminder_dto.dart';
import 'package:gc_reminder/infrastructure/event/event_bus.dart';

class ReminderUpdatedEvent extends AppEvent {
  final int id;
  final UpdateReminderDTO dto;

  ReminderUpdatedEvent({required this.id, required this.dto});
}
