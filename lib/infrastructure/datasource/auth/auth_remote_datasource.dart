import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:gc_reminder/core/constant/endpoint.dart';
import 'package:gc_reminder/core/networks/api_client.dart';
import 'package:gc_reminder/core/networks/error_handler.dart';
import 'package:gc_reminder/infrastructure/datasource/base/api_datasource_ext.dart';
import 'package:gc_reminder/domain/entities/auth/auth_entity.dart';


class AuthRemoteDataSource {
  final ApiClient apiClient;
  AuthRemoteDataSource(this.apiClient);

  Future<Either<Failure, AuthEntity>> login(String username, String password) async
  => apiClient.auth.post(Endpoint.authLogin, {
        'username': username,
        'password': password,
      });
}