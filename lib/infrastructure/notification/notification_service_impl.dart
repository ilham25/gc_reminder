part of 'package:gc_reminder/domain/notification/notification_service.dart';

final FlutterLocalNotificationsPlugin _notificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationServiceImpl implements NotificationService {
  @override
  Future<void> initialize() async {
    const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('app_icon');
    final DarwinInitializationSettings iosSettings =
        DarwinInitializationSettings(
          requestAlertPermission: true,
          requestBadgePermission: true,
          requestSoundPermission: true,
        );

    InitializationSettings settings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _notificationsPlugin.initialize(
      settings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        // Handle notification tap
        print('Notification tapped: ${response.payload}');
      },
    );
    tz.initializeTimeZones();
  }

  @override
  Future<bool?> requestPermission() async {
    bool? result;
    if (Platform.isAndroid) {
      result = await _notificationsPlugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >()
          ?.requestNotificationsPermission();
    } else if (Platform.isIOS) {
      result = await _notificationsPlugin
          .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin
          >()
          ?.requestPermissions(alert: true, badge: true, sound: true);
    }

    return result;
  }

  @override
  Future<void> showNotification({required String title, String? body}) async {
    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
          'test_channel_id', // Must be unique
          'Test Channel',
          channelDescription: 'Your channel description',
          importance: Importance.max,
          priority: Priority.high,
          showWhen: true,
        );

    const DarwinNotificationDetails iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    const NotificationDetails platformDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _notificationsPlugin.show(
      DateTime.now()
          .millisecond, // Notification ID (use unique IDs for different notifications)
      title, // Title
      body, // Body
      platformDetails,
      payload: 'item_id_123', // Optional data to pass when tapped
    );
  }

  @override
  Future<void> scheduleNotification(
    int id, {
    required String title,
    String? body,
    required DateTime date,
  }) async {
    await _notificationsPlugin.zonedSchedule(
      id, // Notification ID
      title,
      body,
      tz.TZDateTime.from(date, tz.local), // When to show
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'scheduled_channel',
          'Scheduled Notifications',
          channelDescription: 'Notifications that are scheduled',
        ),
        iOS: DarwinNotificationDetails(),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,

      // uiLocalNotificationDateInterpretation:
      //     UILocalNotificationDateInterpretation.absoluteTime,
    );
  }
}
