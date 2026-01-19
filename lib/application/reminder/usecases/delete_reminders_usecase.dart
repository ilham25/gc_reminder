import 'package:dartz/dartz.dart';
import 'package:gc_reminder/core/networks/error_handler.dart';
import 'package:gc_reminder/domain/reminder/events/reminder_deleted_event.dart';
import 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';
import 'package:gc_reminder/infrastructure/event/event_bus.dart';

class DeleteRemindersUseCase {
  final ReminderLocalRepository _repository;
  final EventBus _eventBus;

  DeleteRemindersUseCase(this._repository, this._eventBus);

  Future<Either<Failure, void>> call(List<int> ids) async {
    final result = await _repository.deleteReminders(ids);

    return await result.fold((l) => Left(l), (r) {
      for (int id in ids) {
        _eventBus.emit(ReminderDeletedEvent(id: id));
      }
      return Right(null);
    });
  }
}
