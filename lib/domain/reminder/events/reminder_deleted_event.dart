import 'package:gc_reminder/infrastructure/event/event_bus.dart';

class ReminderDeletedEvent extends AppEvent {
  final int id;

  ReminderDeletedEvent({required this.id});
}
