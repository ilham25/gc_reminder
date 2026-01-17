import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/infrastructure/database/database.dart';
import 'package:latlong2/latlong.dart';

part 'reminder_model.freezed.dart';
part 'reminder_model.g.dart';

@freezed
abstract class ReminderModel with _$ReminderModel {
  const factory ReminderModel({
    @Default(0) int id,
    @Default("") String title,
    @Default("") String description,
    required DateTime startAt,
    DateTime? endAt,
    required DateTime createdAt,
    @Default("") String place,
    @Default(0) double lat,
    @Default(0) double lng,

    DateTime? doneAt,
  }) = _ReminderModel;

  factory ReminderModel.fromJson(Map<String, dynamic> json) =>
      _$ReminderModelFromJson(json);
}

extension ReminderModelExt on ReminderModel {
  bool get isDone => doneAt != null;

  ReminderType get type =>
      place.isEmpty ? ReminderType.time : ReminderType.location;

  ReminderTableData toReminderTableData() {
    return ReminderTableData(
      id: id,
      title: title,
      description: description,
      startAt: startAt,
      endAt: endAt,
      createdAt: createdAt,
      doneAt: doneAt,
      place: place,
    );
  }

  Map<String, dynamic> toReminderUpdateForm() {
    Map<String, dynamic> initialValue = {
      'title': title,
      'description': description,
      'startDate': startAt,
      'startTime': startAt,
      'endAt': endAt,
      'place': place,
    };

    if (place.isNotEmpty) {
      initialValue['position'] = LatLng(lat, lng);
      initialValue["isLocationReminder"] = true;
    }

    return initialValue;
  }
}

enum ReminderType { time, location }
