

import 'package:dartz/dartz.dart';
import 'package:gc_reminder/core/constant/endpoint.dart';
import 'package:gc_reminder/core/networks/api_client.dart';
import 'package:gc_reminder/core/networks/error_handler.dart';
import 'package:gc_reminder/domain/entities/user/user_entity.dart';
import 'package:gc_reminder/infrastructure/datasource/base/api_datasource_ext.dart';

class UserDataSource {
  final ApiClient apiClient;
  UserDataSource(this.apiClient);

  Future<Either<Failure, List<UserEntity>>> getUsers({Map<String, dynamic>? params}) async
  => apiClient.user.getList(Endpoint.users, queryParams: params);
}