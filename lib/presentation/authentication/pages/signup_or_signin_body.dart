import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/widgets/basic_app_bar.dart';
import 'package:spotify_app/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';
import 'package:spotify_app/core/utils/assets.dart';
import 'package:spotify_app/presentation/authentication/signup/sign_up.dart';

class SignupOrSigninBody extends StatelessWidget {
  const SignupOrSigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BasicAppBar(),
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(Assets.imagesWave),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset(Assets.imagesWave2),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset(Assets.imagesBilepng),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.imagesSpotifybl),
              SizedBox(
                height: 20,
              ),
              Text(
                'Enjoy listening to music',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Text(
                'Spotify is a proprietary Swedish audio streaming and media services provider. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: BasicAppButton(
                        text: 'Register',
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPage(),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: BasicAppButton(
                        backgroundColor: Color(0xff000000),
                        text: 'Sign in',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
