import 'package:gc_reminder/domain/notification/notification_service.dart';
import 'package:gc_reminder/domain/notification/usecases/schedule_notification_usecase.dart';
import 'package:gc_reminder/domain/notification/usecases/show_notification_usecase.dart';
import 'package:gc_reminder/domain/permission/permission_service.dart';
import 'package:gc_reminder/domain/permission/usecases/request_permission_usecase.dart';
import 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';
import 'package:gc_reminder/infrastructure/database/database.dart';
import 'package:gc_reminder/infrastructure/datasource/reminder/reminder_local_datasource.dart';
import 'package:gc_reminder/infrastructure/datasource/user/user_datasource.dart';
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
    () => NotificationServiceImpl(),
  );

  inject.registerLazySingleton<PermissionService>(
    () => PermissionServiceImpl(),
  );

  // Register usecases
  inject.registerLazySingleton<RequestPermissionUseCase>(
    () => RequestPermissionUseCase(inject<PermissionService>()),
  );

  // Notification usecases
  inject.registerLazySingleton<ShowNotificationUseCase>(
    () => ShowNotificationUseCase(inject<NotificationService>()),
  );
  inject.registerLazySingleton<ScheduleNotificationUseCase>(
    () => ScheduleNotificationUseCase(inject<NotificationService>()),
  );

  /// Register bloc
  // inject.registerLazySingleton<PageBloc>(() => PageBloc()..initPage());

  /// Register repository
  inject.registerLazySingleton<AuthRepositoryImpl>(
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
}
