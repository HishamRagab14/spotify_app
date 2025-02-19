import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/use%20cases/use_case.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/domain/repository/auth/auth_repo.dart';
import 'package:spotify_app/service_locator.dart';

class SignupUseCase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) async {
    return serviceLocator<AuthRepo>().signup(params!);
  }
}
