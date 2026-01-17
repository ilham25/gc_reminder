import 'package:gc_reminder/domain/models/location/current_placemark_model.dart';
import 'package:latlong2/latlong.dart';

class SelectLocationModel {
  final LatLng position;
  final CurrentPlacemarkModel placemark;

  SelectLocationModel({required this.position, required this.placemark});
}
