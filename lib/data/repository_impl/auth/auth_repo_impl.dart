import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/data/sources/auth/firebase_auth_service.dart';
import 'package:spotify_app/domain/repository/auth/auth_repo.dart';
import 'package:spotify_app/service_locator.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either> signin(CreateUserReq req) {
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq req) async{
    return await serviceLocator<FirebaseAuthService>().signup(req);
  }
}
