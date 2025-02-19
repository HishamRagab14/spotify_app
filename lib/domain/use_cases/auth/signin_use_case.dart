import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/use%20cases/use_case.dart';
import 'package:spotify_app/data/models/auth/sign_in_user_req.dart';
import 'package:spotify_app/domain/repository/auth/auth_repo.dart';
import 'package:spotify_app/service_locator.dart';

class SigninUseCase implements UseCase<Either, SignInUserReq> {
  @override
  Future<Either> call({SignInUserReq? params}) async{
    return serviceLocator<AuthRepo>().signinWithEmailAndPassword(params!);
  }
}