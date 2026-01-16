import 'package:freezed_annotation/freezed_annotation.dart';

part 'reminder_model.freezed.dart';
part 'reminder_model.g.dart';

@freezed
abstract class ReminderModel with _$ReminderModel {
  const factory ReminderModel({
    @Default(0) int id,
    @Default("") String title,
    @Default("") String description,
    required DateTime startAt,
    required DateTime endAt,
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
}
