import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gc_reminder/core/widgets/app_bar/app_bar.dart';
import 'package:gc_reminder/domain/models/map/map_model.dart';
import 'package:gc_reminder/presentation/common/widgets/map/primary_map.dart';

@RoutePage()
class ViewLocationScreen extends StatelessWidget {
  final List<MapMarkerModel> markers;

  const ViewLocationScreen({super.key, this.markers = const []});

  @override
  Widget build(BuildContext context) {
    return ViewLocationBody(markers: markers);
  }
}

class ViewLocationBody extends StatefulWidget {
  final List<MapMarkerModel> markers;

  const ViewLocationBody({super.key, required this.markers});

  @override
  State<ViewLocationBody> createState() => ViewLocationBodyState();
}

class ViewLocationBodyState extends State<ViewLocationBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(title: "View Location"),
      body: SafeArea(
        child: Center(child: PrimaryMap(markers: widget.markers)),
      ),
    );
  }
}
