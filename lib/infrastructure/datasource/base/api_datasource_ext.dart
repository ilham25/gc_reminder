
import 'package:gc_reminder/core/networks/api_client.dart';
import 'package:gc_reminder/domain/entities/user/user_entity.dart';
import 'package:gc_reminder/infrastructure/datasource/base/api_datasource.dart';
import 'package:gc_reminder/domain/entities/auth/auth_entity.dart';

extension APIExtension on ApiClient {
  /// AUTH ENTITY
  ApiDataSource<AuthEntity> get auth =>
      ApiDataSource<AuthEntity>(this, AuthEntity.fromJson);

  /// USER ENTITY
  ApiDataSource<UserEntity> get user =>
      ApiDataSource<UserEntity>(this, UserEntity.fromJson);
}