import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gc_reminder/domain/models/map/map_model.dart';
import 'package:gc_reminder/utils/flavor/flavor_utils.dart';
import 'package:latlong2/latlong.dart';

class PrimaryMap extends StatefulWidget {
  final List<MapMarkerModel> markers;

  const PrimaryMap({super.key, this.markers = const []});

  @override
  State<PrimaryMap> createState() => _PrimaryMapState();
}

class _PrimaryMapState extends State<PrimaryMap> {
  final MapController mapController = MapController();

  List<Marker> get markers =>
      widget.markers.map((e) => e.toFlutterMap()).toList();

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(initialCenter: LatLng(-6.175392, 106.827153)),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: flavor.current.packages,
        ),
        MarkerLayer(markers: markers, alignment: Alignment.center),
        RichAttributionWidget(
          attributions: [
            TextSourceAttribution(
              'OpenStreetMap contributors',
              onTap: () {
                //
              }, // (external)
            ),
            // Also add images...
          ],
        ),
      ],
    );
  }
}
