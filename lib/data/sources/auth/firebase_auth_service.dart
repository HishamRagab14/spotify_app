import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/data/models/auth/sign_in_user_req.dart';

abstract class FirebaseAuthService {
  Future<Either> signin(SignInUserReq req);
  Future<Either> signup(CreateUserReq req);
}

class FirebaseAuthServiceImpl implements FirebaseAuthService {
  @override
  Future<Either> signin(SignInUserReq req) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: req.email, password: req.password);
      return Right(null);
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'invalid-credential') {
        message = 'Wrong email or password provided for that user.';
      }
      return Left(message);
    }
  }

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
