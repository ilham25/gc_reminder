import 'package:dartz/dartz.dart';
import 'package:gc_reminder/core/networks/error_handler.dart';
import 'package:gc_reminder/domain/entities/user/user_entity.dart';
import 'package:gc_reminder/domain/repositories/user/user_repository.dart';
import 'package:gc_reminder/infrastructure/datasource/user/user_datasource.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDataSource userDataSource;
  UserRepositoryImpl(this.userDataSource);
  @override
  Future<Either<Failure, List<UserEntity>>> getUsers({Map<String, dynamic>? params})
    => userDataSource.getUsers(params: params);

}