import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:gc_reminder/core/models/base_error.dart';
import 'package:gc_reminder/domain/dto/reminder/update_reminder_dto.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_model.dart';
import 'package:gc_reminder/domain/notification/notification_service.dart';
import 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';
import 'package:geofencing_api/geofencing_api.dart';

part 'package:gc_reminder/infrastructure/location/location_reminder_service_impl.dart';

abstract class LocationReminderService {
  Future<void> initialize();
  Future<void> start();
  Future<Either<BaseError, void>> createGeofence(int id);
}
