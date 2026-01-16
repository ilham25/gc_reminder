// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReminderModel _$ReminderModelFromJson(Map<String, dynamic> json) =>
    _ReminderModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      createdAt: DateTime.parse(json['createdAt'] as String),
      doneAt: json['doneAt'] == null
          ? null
          : DateTime.parse(json['doneAt'] as String),
    );

Map<String, dynamic> _$ReminderModelToJson(_ReminderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'doneAt': instance.doneAt?.toIso8601String(),
    };
