part of 'package:gc_reminder/domain/permission/permission_service.dart';

class PermissionServiceImpl implements PermissionService {
  @override
  Future<bool> hasPermission(AppPermission permission) async {
    final status = (await _toPermission(permission)).status;
    return status.isGranted;
  }

  @override
  Future<bool> requestPermission(AppPermission permission) async {
    final isGranted = await hasPermission(permission);
    if (isGranted == true) return isGranted;

    final permissionLabel = _getPermissionLabel(permission);
    final permissionDeniedLabel = _getPermissionDeniedLabel(permission);

    final result = await PermissionPrompt.request<PermissionStatus>(
      title: permissionLabel.title,
      message: permissionLabel.message,
      onConfirm: () async {
        final status = await _toPermission(permission);
        PermissionStatus result = await status.request();

        return result;
      },
    );

    if (result == null) return false;

    final isDeniedOrCancelled = [
      result.isPermanentlyDenied,
      result.isDenied,
    ].contains(true);

    if (isDeniedOrCancelled) {
      await PermissionPrompt.denied(
        onConfirm: () async {
          await openAppSettings();
        },
        title: permissionDeniedLabel.title,
        message: permissionDeniedLabel.message,
      );
    }

    return result.isGranted;
  }

  Future<Permission> _toPermission(AppPermission permission) async {
    switch (permission) {
      case AppPermission.camera:
        return Permission.camera;
      case AppPermission.location:
        return Permission.location;
      case AppPermission.notification:
        return Permission.notification;
      case AppPermission.photos:
        if (Platform.isAndroid) {
          final androidVersion = int.parse(
            (await DeviceInfoPlugin().androidInfo).version.sdkInt.toString(),
          );

          if (androidVersion >= 33) {
            return Permission.photos;
          } else {
            return Permission.storage;
          }
        }
        return Permission.photos;

      case AppPermission.storage:
        return Permission.storage;
    }
  }

  PermissionLabelModel _getPermissionLabel(AppPermission permission) {
    switch (permission) {
      case AppPermission.camera:
        return PermissionLabelModel(
          title: "Permission to access your camera",
          message:
              "This will allow you to use app features that require the camera.",
        );
      case AppPermission.location:
        return PermissionLabelModel(
          title: "Permission to access your location",
          message:
              "This will allow you to use app features that require location.",
        );
      case AppPermission.notification:
        return PermissionLabelModel(
          title: "Permission to send you notifications",
          message:
              "This will allow you to use app features that require notifications.",
        );
      case AppPermission.photos:
        return PermissionLabelModel(
          title: "Permission to access your photo gallery",
          message:
              "This will allow you to use app features that require photo gallery access.",
        );
      case AppPermission.storage:
        return PermissionLabelModel(
          title: "Permission to access your storage",
          message:
              "This will allow you to use app features that require storage access.",
        );
    }
  }

  PermissionLabelModel _getPermissionDeniedLabel(AppPermission permission) {
    switch (permission) {
      case AppPermission.camera:
        return PermissionLabelModel(
          title: "Camera access not granted",
          message:
              "By pressing the button below, you will be directed to the app settings.",
        );
      case AppPermission.location:
        return PermissionLabelModel(
          title: "Unable to access location",
          message:
              "By pressing the button below, you will be directed to the app settings.",
        );
      case AppPermission.notification:
        return PermissionLabelModel(
          title: "Unable to access notifications",
          message:
              "By pressing the button below, you will be directed to the app settings.",
        );
      case AppPermission.photos:
        return PermissionLabelModel(
          title: "Unable to access photo gallery",
          message:
              "By pressing the button below, you will be directed to the app settings.",
        );
      case AppPermission.storage:
        return PermissionLabelModel(
          title: "Unable to access storage",
          message:
              "By pressing the button below, you will be directed to the app settings.",
        );
    }
  }
}
