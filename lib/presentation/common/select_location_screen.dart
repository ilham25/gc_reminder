import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gc_reminder/application/location/usecases/get_current_placemark_usecase.dart';
import 'package:gc_reminder/config/app_config.dart';
import 'package:gc_reminder/core/widgets/app_bar/app_bar.dart';
import 'package:gc_reminder/core/widgets/button/button.dart';
import 'package:gc_reminder/core/widgets/toast/toast.dart';
import 'package:gc_reminder/domain/models/location/select_location_model.dart';
import 'package:gc_reminder/domain/models/map/map_model.dart';
import 'package:gc_reminder/gen/assets.gen.dart';
import 'package:gc_reminder/injection/injector.dart';
import 'package:gc_reminder/presentation/common/widgets/map/map_marker.dart';
import 'package:gc_reminder/presentation/common/widgets/map/primary_map.dart';
import 'package:gc_reminder/theme/theme.dart';
import 'package:gc_reminder/utils/helper/debouncer.dart';
import 'package:latlong2/latlong.dart';

@RoutePage()
class SelectLocationScreen extends StatelessWidget {
  final List<MapMarkerModel> markers;

  const SelectLocationScreen({super.key, this.markers = const []});

  @override
  Widget build(BuildContext context) {
    return SelectLocationBody(markers: markers);
  }
}

class SelectLocationBody extends StatefulWidget {
  final List<MapMarkerModel> markers;

  const SelectLocationBody({super.key, required this.markers});

  @override
  State<SelectLocationBody> createState() => _SelectLocationBodyState();
}

class _SelectLocationBodyState extends State<SelectLocationBody> {
  final GetCurrentPlacemarkUseCase _getCurrentPlacemarkUseCase =
      inject<GetCurrentPlacemarkUseCase>();

  final debouncer = Debouncer(delay: const Duration(milliseconds: 500));
  LatLng? currentPosition;

  Future _onSelectLocation() async {
    if (currentPosition == null) return;

    final placemarks = await _getCurrentPlacemarkUseCase.call(
      position: currentPosition,
    );
    placemarks.fold(
      (l) {
        UIKitToast.warning(
          context: context,
          title: "Select Location",
          description: "No places",
        );
      },
      (r) async {
        if (r.isEmpty) {
          UIKitToast.warning(
            context: context,
            title: "Select Location",
            description: "No places",
          );
          return;
        }

        context.router.maybePop(
          SelectLocationModel(position: currentPosition!, placemark: r.first),
        );
      },
    );
  }

  void _onCameraChanged(MapCamera camera) {
    setState(() {
      currentPosition = camera.center;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(title: "Select Location"),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Center(
                    child: PrimaryMap(
                      onCameraChanged: (camera) {
                        debouncer(() {
                          _onCameraChanged(camera);
                        });
                      },
                      markers: widget.markers,
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: MapMarker(icon: Assets.icons.locationMarker),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: .symmetric(
                horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                vertical: AppSetting.setHeight(MyTheme.defaultPadding),
              ),
              child: UIKitButton(title: "Select", onTap: _onSelectLocation),
            ),
          ],
        ),
      ),
    );
  }
}
