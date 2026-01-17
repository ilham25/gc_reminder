import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';

part 'current_placemark_model.freezed.dart';

@freezed
abstract class CurrentPlacemarkModel with _$CurrentPlacemarkModel {
  const factory CurrentPlacemarkModel({
    required Placemark placemark,
    required String fullAddress,
  }) = _CurrentPlacemarkModel;
}
