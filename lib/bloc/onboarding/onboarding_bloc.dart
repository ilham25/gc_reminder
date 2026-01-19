import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gc_reminder/application/permission/usecases/request_permission_usecase.dart';
import 'package:gc_reminder/core/models/base_error.dart';
import 'package:gc_reminder/domain/cubit/safe_cubit.dart';
import 'package:gc_reminder/domain/repositories/auth/auth_repository.dart';
import 'package:gc_reminder/injection/injector.dart';

part 'onboarding_bloc_state.dart';

part 'onboarding_bloc.freezed.dart';

class OnboardingBloc extends SafeCubit<OnboardingBlocState> {
  OnboardingBloc() : super(const OnboardingBlocState.initial());

  final RequestPermissionUseCase _requestPermissionUseCase =
      inject<RequestPermissionUseCase>();
  final AuthRepository authRepository = inject<AuthRepository>();

  Future complete() async {
    emit(const OnboardingBlocState.loading());

    final requestPermission = await _onRequestPermission();
    final requestPermissionResult = requestPermission.fold((left) {
      emit(OnboardingBlocState.error(left.message));
      return null;
    }, (right) => right);
    if (requestPermissionResult == null) return;

    try {
      await authRepository.setIsOnboardingCompleted();
      emit(const OnboardingBlocState.success());
    } catch (e) {
      emit(OnboardingBlocState.error(e.toString()));
    }
  }

  Future<Either<BaseError, bool>> _onRequestPermission() async {
    final getNotificationPermission = await _requestPermissionUseCase.call(
      .notification,
    );
    if (!getNotificationPermission) {
      return Left(BaseError(message: "Notification permission not granted"));
    }
    final getLocationPermission = await _requestPermissionUseCase.call(
      .location,
    );
    if (!getLocationPermission) {
      return Left(BaseError(message: "Location permission not granted"));
    }

    return Right(true);
  }
}
