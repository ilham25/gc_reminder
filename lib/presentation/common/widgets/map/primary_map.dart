import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:gc_reminder/application/location/usecases/get_current_position_usecase.dart';
import 'package:gc_reminder/domain/models/map/map_model.dart';
import 'package:gc_reminder/injection/injector.dart';
import 'package:gc_reminder/utils/flavor/flavor_utils.dart';
import 'package:latlong2/latlong.dart';

class PrimaryMap extends StatefulWidget {
  final MapInitialPositionModel? initialPosition;
  final List<MapMarkerModel> markers;
  final Function(MapCamera camera)? onCameraChanged;

  const PrimaryMap({
    super.key,
    this.markers = const [],
    this.onCameraChanged,
    this.initialPosition,
  });

  @override
  State<PrimaryMap> createState() => _PrimaryMapState();
}

class _PrimaryMapState extends State<PrimaryMap> {
  final MapController _mapController = MapController();
  final GetCurrentPositionUseCase _getCurrentPositionUseCase =
      inject<GetCurrentPositionUseCase>();

  List<Marker> get markers =>
      widget.markers.map((e) => e.toFlutterMap()).toList();

  @override
  void initState() {
    super.initState();

    // Listen to map events
    _mapController.mapEventStream.listen((event) {
      if (event is MapEventMove || event is MapEventMoveEnd) {
        if (widget.onCameraChanged != null) {
          widget.onCameraChanged!(event.camera);
        }
      }
    });
  }

  Future _onMarkersUpdate() async {
    if (markers.isEmpty) {
      final result = await _getCurrentPositionUseCase.call();
      final currentPosition = result.fold((l) => null, (r) => r);
      if (currentPosition == null) {
        _mapController.move(
          LatLng(
            widget.initialPosition?.latitude ?? 0,
            widget.initialPosition?.longitude ?? 0,
          ),
          widget.initialPosition?.zoom ?? 13,
        );
        return;
      }

      _mapController.move(
        LatLng(currentPosition.latitude, currentPosition.longitude),
        13,
      );

      return;
    }

    _mapController.move(
      LatLng(widget.markers.first.latitude, widget.markers.first.longitude),
      13,
    );
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        initialCenter: LatLng(
          widget.initialPosition?.latitude ?? 0,
          widget.initialPosition?.longitude ?? 0,
        ),
        initialZoom: widget.initialPosition?.zoom ?? 13,
        onMapReady: () async {
          await _onMarkersUpdate();
          _mapController.move(_mapController.camera.center, 16);
        },
      ),
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
        const IgnorePointer(ignoring: true, child: CurrentLocationLayer()),
      ],
    );
  }
}
