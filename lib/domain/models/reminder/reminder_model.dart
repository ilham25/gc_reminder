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
    String? description,
    required DateTime startAt,
    DateTime? endAt,
    required DateTime createdAt,
    String? place,
    double? lat,
    double? lng,

    DateTime? doneAt,
  }) = _ReminderModel;

  factory ReminderModel.fromJson(Map<String, dynamic> json) =>
      _$ReminderModelFromJson(json);
}

extension ReminderModelExt on ReminderModel {
  bool get isDone => doneAt != null;

  ReminderType get type =>
      place == null ? ReminderType.time : ReminderType.location;

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

    if (place != null) {
      initialValue['position'] = LatLng(lat!, lng!);
      initialValue["isLocationReminder"] = true;
    }

    return initialValue;
  }
}

enum ReminderType { time, location }
