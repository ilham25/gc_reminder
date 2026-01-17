import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/domain/cubit/safe_cubit.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_model.dart';
import 'package:gc_reminder/domain/notification/usecases/delete_notifications_usecase.dart';
import 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';
import 'package:gc_reminder/injection/injector.dart';

part 'reminder_list_bloc_state.dart';

part 'reminder_list_bloc.freezed.dart';

class ReminderListBloc extends SafeCubit<ReminderListBlocState> {
  ReminderListBloc() : super(const ReminderListBlocState.initial());

  final ReminderLocalRepository _localRepository =
      inject<ReminderLocalRepository>();
  final DeleteNotificationsUseCase _deleteNotificationsUseCase =
      inject<DeleteNotificationsUseCase>();

  Future getData() async {
    emit(const ReminderListBlocState.loading());
    final result = await _localRepository.getReminders();
    result.fold(
      (left) => emit(ReminderListBlocState.error(left.message)),
      (items) => emit(
        ReminderListBlocState.loaded(state: ReminderListState(items: items)),
      ),
    );
  }

  Future refresh() async {
    getData();
  }

  Future delete(List<int> ids) async {
    await state.maybeWhen(
      orElse: () {},
      loaded: (oldState, action) async {
        emit(
          ReminderListBlocState.loaded(
            state: oldState,
            action: ReminderListActionState.loading(),
          ),
        );

        final mutateDeleteReminders = await _localRepository.deleteReminders(
          ids,
        );

        await mutateDeleteReminders.fold(
          (left) async => emit(
            ReminderListBlocState.loaded(
              state: oldState,
              action: ReminderListActionState.error(left.message),
            ),
          ),
          (right) async {
            final mutateDeleteSchedules = await _deleteNotificationsUseCase
                .call(ids);

            return mutateDeleteSchedules.fold(
              (left) => ReminderListBlocState.loaded(
                state: oldState,
                action: ReminderListActionState.error(left.message),
              ),
              (right) => emit(
                ReminderListBlocState.loaded(
                  state: oldState,
                  action: ReminderListActionState.success(actionName: "delete"),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
