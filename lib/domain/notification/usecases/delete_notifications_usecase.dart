import 'package:dartz/dartz.dart';
import 'package:gc_reminder/core/models/base_error.dart';
import 'package:gc_reminder/domain/notification/notification_service.dart';

class DeleteNotificationsUseCase {
  final NotificationService _notificationService;
  DeleteNotificationsUseCase(this._notificationService);

  Future<Either<BaseError, void>> call(List<int> ids) =>
      _notificationService.deleteNotifications(ids);
}
