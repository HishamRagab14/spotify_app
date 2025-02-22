import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/common/widgets/basic_app_bar.dart';
import 'package:spotify_app/core/utils/assets.dart';
import 'package:spotify_app/presentation/authentication/signin/pages/signin_body.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          Assets.imagesSpotifybl,
          height: 35,
          width: 35,
        ),
        hideBackButton: false,
      ),
      body: SigninBody(),
    );
  }
}
