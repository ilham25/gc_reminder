import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:gc_reminder/core/models/base_error.dart';
import 'package:gc_reminder/domain/reminder/events/reminder_created_event.dart';
import 'package:gc_reminder/domain/reminder/events/reminder_deleted_event.dart';
import 'package:gc_reminder/domain/reminder/events/reminder_updated_event.dart';
import 'package:gc_reminder/infrastructure/event/event_bus.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

part 'package:gc_reminder/infrastructure/notification/notification_service_impl.dart';

abstract class NotificationService {
  Future<void> initialize();
  Future<bool?> requestPermission();
  Future<void> showNotification({required String title, String? body});
  Future<Either<BaseError, void>> scheduleNotification(
    int id, {
    required String title,
    String? body,
    required DateTime date,
  });
  Future<Either<BaseError, void>> deleteNotification(int id);
  Future<Either<BaseError, void>> deleteNotifications(List<int> ids);
}
