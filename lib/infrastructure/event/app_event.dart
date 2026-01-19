part of 'event_bus.dart';

abstract class AppEvent {
  final DateTime occurredAt;

  AppEvent() : occurredAt = DateTime.now();
}
