import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';

abstract class FirebaseAuthService {
  Future<void> signin(CreateUserReq req);
  Future<Either> signup(CreateUserReq req);
}

class FirebaseAuthServiceImpl implements FirebaseAuthService {
  @override
  Future<void> signin(CreateUserReq req) async {}

  @override
  Future<Either> signup(CreateUserReq req) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: req.email, password: req.password);
      return Right(null);
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      }
      return Left(message);
    }
  }
}
