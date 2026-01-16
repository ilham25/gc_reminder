
import 'package:dartz/dartz.dart';
import 'package:gc_reminder/core/networks/error_handler.dart';
import 'package:gc_reminder/domain/entities/user/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, List<UserEntity>>> getUsers({Map<String, dynamic>? params});
}