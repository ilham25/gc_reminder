import 'package:gc_reminder/domain/notification/notification_service.dart';

class ShowNotificationUseCase {
  final NotificationService _notificationService;
  ShowNotificationUseCase(this._notificationService);

  Future<void> call({required String title, String? body}) =>
      _notificationService.showNotification(title: title, body: body);
}
