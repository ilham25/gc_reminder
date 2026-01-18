import 'package:drift/drift.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_filter_model.dart';
import 'package:gc_reminder/infrastructure/database/database.dart';

part 'reminder_dao.g.dart';

// the _TodosDaoMixin will be created by drift. It contains all the necessary
// fields for the tables. The <MyDatabase> type annotation is the database class
// that should use this dao.
@DriftAccessor(tables: tables)
class ReminderDao extends DatabaseAccessor<AppDatabase>
    with _$ReminderDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  ReminderDao(super.attachedDatabase);

  Future<List<ReminderTableData>> getReminders({ReminderFilterModel? filter}) {
    final query = select(db.reminderTable);

    if (filter == null) {
      return query.get();
    }

    if (filter.date != null) {
      query.where((t) {
        final d = filter.date!;
        return t.startAt.isBetweenValues(
          DateTime(d.year, d.month, d.day),
          DateTime(d.year, d.month, d.day, 23, 59, 59),
        );
      });
    }

    if (filter.type != null) {
      query.where((t) => t.type.equalsValue(filter.type!));
    }

    if (filter.status != null) {
      if (filter.status == ReminderStatus.completed) {
        query.where(
          (t) => t.type
              .equalsValue(ReminderType.location)
              .caseMatch(
                when: {const Constant(true): db.reminderTable.doneAt.isNull()},
                orElse: db.reminderTable.startAt.isBiggerThanValue(
                  filter.date ?? DateTime.now(),
                ),
              ),
        );
      } else {
        query.where(
          (t) => t.type
              .equalsValue(ReminderType.location)
              .caseMatch(
                when: {
                  const Constant(true): db.reminderTable.doneAt.isNotNull(),
                },
                orElse: db.reminderTable.startAt.isSmallerThanValue(
                  filter.date ?? DateTime.now(),
                ),
              ),
        );
      }
    }

    return query.get();
  }
}
