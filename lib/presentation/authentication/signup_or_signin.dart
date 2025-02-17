import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/authentication/pages/signup_or_signin_body.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignupOrSigninBody(),
    );
  }
}
