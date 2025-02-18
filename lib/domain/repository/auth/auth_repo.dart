import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/errors/failures.dart';
import 'package:spotify_app/domain/entities/auth/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure,UserEntity>> signin(String email, String password);
  Future<Either<Failure,UserEntity>> signup(String email, String password);
  // Future<void> logout();
}