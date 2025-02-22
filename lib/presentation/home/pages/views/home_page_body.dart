import 'package:flutter/material.dart';
import 'package:spotify_app/core/utils/assets.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        homeTopCard(),
      ],
    );
  }

  Widget homeTopCard() {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Stack(
          children: [
            Image.asset(Assets.imagesHomeArtist),
            // Image.asset(Assets.imagesDualipapn,fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}
