import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/data/models/auth/sign_in_user_req.dart';

abstract class AuthRepo {
  Future<Either> signinWithEmailAndPassword(SignInUserReq req);
  Future<Either> signinWithGoogle();
  Future<Either> signup(CreateUserReq req);
  // Future<void> logout();
}