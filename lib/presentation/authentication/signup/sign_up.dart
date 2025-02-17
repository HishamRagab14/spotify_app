import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/widgets/basic_app_bar.dart';
import 'package:spotify_app/core/utils/assets.dart';
import 'package:spotify_app/presentation/authentication/signup/pages/signup_body.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          Assets.imagesSpotifybl,
          height: 35,
          width: 35,
        ),
      ),
      body: SignupBody(),
    );
  }
}
