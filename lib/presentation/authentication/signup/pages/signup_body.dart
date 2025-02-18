import 'package:flutter/material.dart';
import 'package:spotify_app/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_app/common/widgets/social_icons_row.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';
import 'package:spotify_app/presentation/authentication/signin/sign_in.dart';
import 'package:spotify_app/presentation/authentication/signup/pages/or_divider.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _registerText(),
              SizedBox(height: 15),
              _supportTextField(),
              SizedBox(height: 20),
              _fullNameField(context),
              SizedBox(height: 15),
              _emailField(context),
              SizedBox(height: 15),
              _passwordField(context),
              SizedBox(height: 30),
              BasicAppButton(
                text: 'Create Account',
                onPressed: () {},
              ),
              SizedBox(height: 30),
              OrDivider(),
              SizedBox(height: 20),
              SocialIconsRow(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              _signInText(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _registerText() {
    return Text(
      'Register',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNameField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Full Name',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Email Address',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _supportTextField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('If you need any support '),
        GestureDetector(
          onTap: () {},
          child: Text(
            'click here',
            style: TextStyle(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget _signInText( BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account? ',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInPage()));
          },
          child: Text(
            'Sign in',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF288CE9),
            ),
          ),
        ),
      ],
    );
  }
}


