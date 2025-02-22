import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/common/widgets/basic_app_bar.dart';
import 'package:spotify_app/core/utils/assets.dart';
import 'package:spotify_app/presentation/home/pages/views/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:BasicAppBar(
        title: SvgPicture.asset(
          Assets.imagesSpotifybl,
          height: 40,
          width: 40,
        ),
        hideBackButton: true,
      ),
      body: HomePageBody(),
    );
  }
}
