part of 'package:gc_reminder/domain/location/services/location_service.dart';

class LocationServiceImpl implements LocationService {
  @override
  Future<Either<BaseError, Position>> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: AndroidSettings(accuracy: LocationAccuracy.high),
      );
      return Right(position);
    } catch (e) {
      debugPrint('getCurrentLocation error:${e.toString()}');
      return Left(BaseError(message: e.toString()));
    }
  }

  @override
  Future<Either<BaseError, List<Placemark>>> getPlacemarks(
    LatLng position,
  ) async {
    try {
      final List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );
      return Right(placemarks);
    } catch (e) {
      debugPrint('getPlacemarks error:${e.toString()}');
      return Left(BaseError(message: e.toString()));
    }
  }
}
