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
      query.where((t) {
        final d = DateTime.now();
        return t.startAt.isBiggerOrEqualValue(DateTime(d.year, d.month, d.day));
      });
    } else {
      query.where((tbl) {
        final List<Expression<bool>> predicates = [];

        // 1. Specific Date Filter (if provided)
        if (filter.date != null) {
          final startOfDay = DateTime(
            filter.date!.year,
            filter.date!.month,
            filter.date!.day,
          );
          final endOfDay = startOfDay.add(const Duration(days: 1));
          predicates.add(tbl.startAt.isBetweenValues(startOfDay, endOfDay));
        }

        // 2. Basic Type Filter (if user selected a specific type in the UI)
        if (filter.type != null) {
          predicates.add(tbl.type.equalsValue(filter.type!));
        }

        return Expression.and(predicates);
      });
    }

    return (query..orderBy([(t) => OrderingTerm.asc(t.startAt)])).get();
  }
}
