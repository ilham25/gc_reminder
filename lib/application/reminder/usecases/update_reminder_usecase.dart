import 'package:dartz/dartz.dart';
import 'package:gc_reminder/core/networks/error_handler.dart';
import 'package:gc_reminder/domain/dto/reminder/update_reminder_dto.dart';
import 'package:gc_reminder/domain/reminder/events/reminder_updated_event.dart';
import 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';
import 'package:gc_reminder/infrastructure/event/event_bus.dart';

class UpdateReminderUseCase {
  final ReminderLocalRepository _repository;
  final EventBus _eventBus;

  UpdateReminderUseCase(this._repository, this._eventBus);

  Future<Either<Failure, void>> call(
    int id, {
    required UpdateReminderDTO dto,
  }) async {
    if (dto.type == .time && DateTime.now().isAfter(dto.startAt!)) {
      return Left(
        Failure(
          message: "Start date must be in the future",
          statusCode: ResponseCode.badRequest,
        ),
      );
    }

    final result = await _repository.updateReminder(id, dto: dto);
    return await result.fold((l) => Left(l), (r) {
      _eventBus.emit(ReminderUpdatedEvent(id: id, dto: dto));
      return Right(null);
    });
  }
}
