import 'package:flutter/material.dart';
import 'package:spotify_app/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_app/common/widgets/social_icons_row.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/domain/use_cases/auth/signup_use_case.dart';
import 'package:spotify_app/presentation/authentication/signin/sign_in.dart';
import 'package:spotify_app/presentation/authentication/signup/pages/or_divider.dart';
import 'package:spotify_app/presentation/home/pages/home_page.dart';
import 'package:spotify_app/service_locator.dart';

class SignupBody extends StatelessWidget {
  SignupBody({super.key});
  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();

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
                onPressed: () async {
                  var result = await serviceLocator<SignupUseCase>().call(
                    params: CreateUserReq(
                      email: email.text.toString(),
                      password: password.text.toString(),
                      name: name.text.toString(),
                    ),
                  );
                  result.fold(
                    (l) {
                      var snackBar = SnackBar(content: Text(l));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    (r) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Account created successfully'),
                        ),
                      );
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                        (route) => false,
                      );
                    },
                  );
                },
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
      controller: name,
      decoration: InputDecoration(
        labelText: 'Full Name',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      controller: email,
      decoration: InputDecoration(
        labelText: 'Email Address',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: password,
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

  Widget _signInText(BuildContext context) {
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
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => SignInPage()));
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
