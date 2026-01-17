import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart' as fmap;
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/presentation/common/widgets/map/map_marker.dart';
import 'package:latlong2/latlong.dart';

class MapMarkerModel {
  final double latitude;
  final double longitude;
  final VoidCallback? onTap;

  const MapMarkerModel({
    required this.latitude,
    required this.longitude,
    this.onTap,
  });

  fmap.Marker toFlutterMap() {
    return fmap.Marker(
      point: LatLng(latitude, longitude),
      child: MapMarker(icon: Assets.icons.locationMarker, onTap: onTap),
    );
  }
}
