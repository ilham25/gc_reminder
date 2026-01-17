import 'package:dartz/dartz.dart';
import 'package:gc_reminder/core/models/base_error.dart';
import 'package:gc_reminder/domain/notification/notification_service.dart';

class ScheduleNotificationUseCase {
  final NotificationService _notificationService;
  ScheduleNotificationUseCase(this._notificationService);

  Future<Either<BaseError, void>> call(
    int id, {
    required String title,
    String? body,
    required DateTime date,
  }) => _notificationService.scheduleNotification(
    id,
    title: title,
    body: body,
    date: date,
  );
}
