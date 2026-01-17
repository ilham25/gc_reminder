import 'package:dartz/dartz.dart';
import 'package:gc_reminder/core/models/base_error.dart';
import 'package:gc_reminder/domain/location/services/location_service.dart';
import 'package:geolocator/geolocator.dart';

class GetCurrentPositionUseCase {
  final LocationService _locationService;
  GetCurrentPositionUseCase(this._locationService);

  Future<Either<BaseError, Position>> call() =>
      _locationService.getCurrentLocation();
}
