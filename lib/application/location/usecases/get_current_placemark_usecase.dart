import 'package:dartz/dartz.dart';
import 'package:gc_reminder/core/models/base_error.dart';
import 'package:gc_reminder/domain/location/services/location_service.dart';
import 'package:gc_reminder/domain/models/location/current_placemark_model.dart';
import 'package:latlong2/latlong.dart';

class GetCurrentPlacemarkUseCase {
  final LocationService _locationService;

  GetCurrentPlacemarkUseCase(this._locationService);

  Future<Either<BaseError, List<CurrentPlacemarkModel>>> call({
    LatLng? position,
  }) async {
    if (position == null) {
      final getPositionResult = await _locationService.getCurrentLocation();
      position = getPositionResult.fold(
        (l) => null,
        (r) => LatLng(r.latitude, r.longitude),
      );
    }

    if (position == null) {
      return Left(BaseError(message: "Gagal mendapatkan lokasi"));
    }
    final placemarks = await _locationService.getPlacemarks(position);

    return placemarks.fold(
      (l) => Left(l),
      (r) => Right(
        r.map((placemark) {
          String fullAddress = [
            placemark.name,
            placemark.street,
            placemark.subLocality,
            placemark.subAdministrativeArea,
            placemark.locality,
            placemark.administrativeArea,
            placemark.postalCode,
          ].where((e) => e != null && e.isNotEmpty).join(', ');

          return CurrentPlacemarkModel(
            placemark: placemark,
            fullAddress: fullAddress,
          );
        }).toList(),
      ),
    );
  }
}
