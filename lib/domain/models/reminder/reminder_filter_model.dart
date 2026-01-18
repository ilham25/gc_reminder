import 'package:gc_reminder/domain/models/common/label_value.dart';
import 'package:gc_reminder/infrastructure/database/database.dart';

class ReminderFilterModel {
  final DateTime? date;
  final ReminderType? type;
  final ReminderStatus? status;

  const ReminderFilterModel({this.date, this.type, this.status});

  static ReminderFilterModel fromReminderFilterForm(
    Map<String, dynamic> formData,
  ) {
    final status = formData["status"] as LabelValue<ReminderStatus>?;
    final type = formData["type"] as LabelValue<ReminderType>?;
    return ReminderFilterModel(status: status?.value, type: type?.value);
  }

  Map<String, dynamic> toReminderFilterForm() {
    return {
      "status": status == null
          ? null
          : LabelValue<ReminderStatus>(
              label: status?.label ?? "",
              value: status!,
            ),
      "type": type == null
          ? null
          : LabelValue<ReminderType>(label: type?.label ?? "", value: type!),
    };
  }

  ReminderFilterModel copyWith({
    DateTime? date,
    ReminderType? type,
    ReminderStatus? status,
  }) {
    return ReminderFilterModel(
      date: date ?? this.date,
      type: type ?? this.type,
      status: status ?? this.status,
    );
  }
}

enum ReminderStatus { ongoing, completed }

extension ReminderStatusExt on ReminderStatus {
  String get label {
    switch (this) {
      case ReminderStatus.ongoing:
        return "Ongoing";
      case ReminderStatus.completed:
        return "Completed";
    }
  }
}
