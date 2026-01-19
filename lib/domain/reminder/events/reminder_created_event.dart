import 'package:gc_reminder/domain/dto/reminder/create_reminder_dto.dart';
import 'package:gc_reminder/infrastructure/event/event_bus.dart';

class ReminderCreatedEvent extends AppEvent {
  final int id;
  final CreateReminderDTO dto;

  ReminderCreatedEvent({required this.id, required this.dto});
}
