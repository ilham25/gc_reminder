import 'package:gc_reminder/application/reminder/usecases/create_reminder_usecase.dart';
import 'package:gc_reminder/application/reminder/usecases/delete_reminders_usecase.dart';
import 'package:gc_reminder/application/reminder/usecases/update_reminder_usecase.dart';
import 'package:gc_reminder/domain/location/services/location_reminder_service.dart';
import 'package:gc_reminder/domain/location/services/location_service.dart';
import 'package:gc_reminder/domain/location/usecases/get_current_placemark_usecase.dart';
import 'package:gc_reminder/domain/location/usecases/get_current_position_usecase.dart';
import 'package:gc_reminder/domain/notification/notification_service.dart';
import 'package:gc_reminder/domain/notification/usecases/delete_notifications_usecase.dart';
import 'package:gc_reminder/domain/notification/usecases/schedule_notification_usecase.dart';
import 'package:gc_reminder/domain/notification/usecases/show_notification_usecase.dart';
import 'package:gc_reminder/domain/permission/permission_service.dart';
import 'package:gc_reminder/domain/permission/usecases/request_permission_usecase.dart';
import 'package:gc_reminder/domain/repositories/auth/auth_repository.dart';
import 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';
import 'package:gc_reminder/infrastructure/database/database.dart';
import 'package:gc_reminder/infrastructure/datasource/reminder/reminder_local_datasource.dart';
import 'package:gc_reminder/infrastructure/datasource/user/user_datasource.dart';
import 'package:gc_reminder/infrastructure/event/event_bus.dart';
import 'package:gc_reminder/infrastructure/repositories/user/user_repository_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:gc_reminder/core/networks/api_client.dart';
import 'package:gc_reminder/utils/flavor/flavor_utils.dart';
import 'package:gc_reminder/infrastructure/datasource/auth/auth_local_datasource.dart';
import 'package:gc_reminder/infrastructure/datasource/auth/auth_remote_datasource.dart';
import 'package:gc_reminder/infrastructure/repositories/auth/auth_repository_impl.dart';
import 'package:gc_reminder/routing/route.dart';

GetIt inject = GetIt.instance;

Future<void> setupInjector() async {
  /// Route
  inject.registerSingleton<AppRouter>(AppRouter());

  /// Registering flavors
  inject.registerSingleton(FlavorUtils()..initType());

  /// Reinitialize flavor
  await flavor.initType();

  /// Core api client
  inject.registerLazySingleton(() => ApiClient());

  /// Local Database
  inject.registerLazySingleton<AppDatabase>(() => AppDatabase());

  /// Event Bus
  inject.registerLazySingleton<EventBus>(() => EventBus());

  /// Registering data source
  inject.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSource(),
  );
  inject.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(inject<ApiClient>()),
  );
  inject.registerLazySingleton<UserDataSource>(
    () => UserDataSource(inject<ApiClient>()),
  );
  inject.registerLazySingleton<ReminderLocalDataSource>(
    () => ReminderLocalDataSource(inject<AppDatabase>()),
  );

  /// Register services
  inject.registerLazySingleton<NotificationService>(
    () => NotificationServiceImpl(eventBus: inject<EventBus>()),
  );
  inject.registerLazySingleton<PermissionService>(
    () => PermissionServiceImpl(),
  );
  inject.registerLazySingleton<LocationService>(() => LocationServiceImpl());

  // Register usecases
  inject.registerLazySingleton<RequestPermissionUseCase>(
    () => RequestPermissionUseCase(inject<PermissionService>()),
  );

  /// Register bloc
  // inject.registerLazySingleton<PageBloc>(() => PageBloc()..initPage());

  /// Register repository
  inject.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: inject<AuthRemoteDataSource>(),
      localDataSource: inject<AuthLocalDataSource>(),
    ),
  );
  inject.registerLazySingleton<UserRepositoryImpl>(
    () => UserRepositoryImpl(inject<UserDataSource>()),
  );

  inject.registerLazySingleton<ReminderLocalRepository>(
    () => ReminderLocalRepositoryImpl(inject<ReminderLocalDataSource>()),
  );

  inject.registerLazySingleton<LocationReminderService>(
    () => LocationReminderServiceImpl(
      notificationService: inject<NotificationService>(),
      reminderLocalRepository: inject<ReminderLocalRepository>(),
      eventBus: inject<EventBus>(),
    ),
  );

  // Notification usecases
  inject.registerLazySingleton<ShowNotificationUseCase>(
    () => ShowNotificationUseCase(inject<NotificationService>()),
  );
  inject.registerLazySingleton<ScheduleNotificationUseCase>(
    () => ScheduleNotificationUseCase(inject<NotificationService>()),
  );
  inject.registerLazySingleton<DeleteNotificationsUseCase>(
    () => DeleteNotificationsUseCase(inject<NotificationService>()),
  );

  // Location usecases
  inject.registerLazySingleton<GetCurrentPositionUseCase>(
    () => GetCurrentPositionUseCase(inject<LocationService>()),
  );
  inject.registerLazySingleton<GetCurrentPlacemarkUseCase>(
    () => GetCurrentPlacemarkUseCase(inject<LocationService>()),
  );

  // Reminder Usecases
  inject.registerLazySingleton<CreateReminderUseCase>(
    () => CreateReminderUseCase(
      inject<ReminderLocalRepository>(),
      inject<EventBus>(),
    ),
  );
  inject.registerLazySingleton<UpdateReminderUseCase>(
    () => UpdateReminderUseCase(
      inject<ReminderLocalRepository>(),
      inject<EventBus>(),
    ),
  );
  inject.registerLazySingleton<DeleteRemindersUseCase>(
    () => DeleteRemindersUseCase(
      inject<ReminderLocalRepository>(),
      inject<EventBus>(),
    ),
  );

  await inject<LocationReminderService>().initialize();
}
