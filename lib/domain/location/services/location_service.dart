import 'package:dartz/dartz.dart';
import 'package:flutter/rendering.dart';
import 'package:gc_reminder/core/models/base_error.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

part 'package:gc_reminder/infrastructure/location/location_service_impl.dart';

abstract class LocationService {
  Future<Either<BaseError, Position>> getCurrentLocation();
  Future<Either<BaseError, List<Placemark>>> getPlacemarks(LatLng position);
}
