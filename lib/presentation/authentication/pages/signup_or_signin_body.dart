import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/core/utils/assets.dart';

class SignupOrSigninBody extends StatelessWidget {
  const SignupOrSigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
            children: [
              
            ],
          ),
        )
      ],
    );
  }
}
