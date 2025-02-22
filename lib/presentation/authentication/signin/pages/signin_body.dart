import 'package:flutter/material.dart';
import 'package:spotify_app/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_app/common/widgets/social_icons_row.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';
import 'package:spotify_app/data/models/auth/sign_in_user_req.dart';
import 'package:spotify_app/domain/use_cases/auth/signin_use_case.dart';
import 'package:spotify_app/presentation/authentication/signup/pages/or_divider.dart';
import 'package:spotify_app/presentation/authentication/signup/sign_up.dart';
import 'package:spotify_app/presentation/home/pages/home_page.dart';
import 'package:spotify_app/service_locator.dart';

class SigninBody extends StatelessWidget {
  SigninBody({super.key});
  final email = TextEditingController();
  final password = TextEditingController();

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
              _emailField(context),
              SizedBox(height: 15),
              _passwordField(context),
              SizedBox(height: 30),
              BasicAppButton(
                text: 'Sign In',
                onPressed: () async {
                  var result = await serviceLocator<SigninUseCase>().call(
                    params: SignInUserReq(
                      email: email.text.toString(),
                      password: password.text.toString(),
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
                          content: Text('Account signed in successfully'),
                        ),
                      );
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                        (route) => false,
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 30),
              OrDivider(),
              SizedBox(height: 20),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.end,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(right: 30),
              //       child: GestureDetector(
              //           child: SvgPicture.asset(Assets.imagesGoogleicon)),
              //     ),
              //     GestureDetector(
              //       child: SvgPicture.asset(
              //         Assets.imagesAppleicon,
              //         height: 34,
              //       ),
              //     ),
              //   ],
              // ),
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
      'Sign In',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      controller: email,
      decoration: InputDecoration(
        labelText: 'Enter Username Or Email',
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
          'Not A Member ?  ',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => SignupPage()));
          },
          child: Text(
            'Register Now?',
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
