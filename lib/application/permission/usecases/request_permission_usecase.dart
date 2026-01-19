import 'package:gc_reminder/domain/permission/permission_service.dart';

class RequestPermissionUseCase {
  final PermissionService _permissionService;

  RequestPermissionUseCase(this._permissionService);

  Future<bool> call(AppPermission permission) {
    return _permissionService.requestPermission(permission);
  }
}
