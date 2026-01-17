import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

part 'package:gc_reminder/infrastructure/notification/notification_service_impl.dart';

abstract class NotificationService {
  Future<void> initialize();
  Future<bool?> requestPermission();
  Future<void> showNotification({required String title, String? body});
  Future<void> scheduleNotification(
    int id, {
    required String title,
    String? body,
    required DateTime date,
  });
}
