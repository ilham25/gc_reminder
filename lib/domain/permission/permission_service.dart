import 'dart:io';

import 'package:gc_reminder/core/widgets/dialog/permission_prompt.dart';
import 'package:gc_reminder/domain/models/permission/permission_label_model.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:device_info_plus/device_info_plus.dart';

part 'package:gc_reminder/infrastructure/permission/permission_service_impl.dart';

enum AppPermission { camera, location, notification, photos, storage }

abstract class PermissionService {
  Future<bool> hasPermission(AppPermission permission);
  Future<bool> requestPermission(AppPermission permission);
}
