part of 'package:gc_reminder/domain/location/services/location_reminder_service.dart';

class LocationReminderServiceImpl implements LocationReminderService {
  final _geofence = Geofencing.instance;

  final ReminderLocalRepository reminderLocalRepository;
  final NotificationService notificationService;

  LocationReminderServiceImpl({
    required this.reminderLocalRepository,
    required this.notificationService,
  });

  @override
  Future<void> initialize() async {
    _geofence.setup(
      interval: 5000, // Check every 5 seconds
      accuracy: 100, // Accuracy in meters
    );

    // _geofence.onGeofenceStatusChanged.listen((GeofenceStatusChanged event) {
    //   if (event.status == GeofenceStatus.enter) {
    //     _showNotification(event.region.id, "You have arrived at your destination!");
    //   }
    // });
    _geofence.addGeofenceStatusChangedListener((
      geofenceRegion,
      geofenceStatus,
      location,
    ) async {
      if (geofenceStatus == .enter) {
        _showNotification(geofenceRegion);
      }
    });
  }

  @override
  Future<Either<BaseError, void>> createGeofence(int id) async {
    debugPrint("createGeofence: $id");
    final result = await reminderLocalRepository.getReminder(id);
    return result.fold(
      (l) {
        return Left(BaseError(message: l.message));
      },
      (row) async {
        final region = GeofenceRegion.circular(
          id: id.toString(),
          center: LatLng(row.lat!, row.lng!),
          radius: 100, // 100 meters
          data: row,
        );

        await _geofence.start(regions: {region});
        return Right(null);
      },
    );
  }

  Future _showNotification(GeofenceRegion region) async {
    final reminder = region.data as ReminderModel;
    await notificationService.showNotification(
      title: reminder.title,
      body: reminder.description,
    );
  }
}
