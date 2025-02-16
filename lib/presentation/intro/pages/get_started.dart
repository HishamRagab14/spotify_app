import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_app/core/utils/assets.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  Assets.imagesAriana,
                ),
              ),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(Assets.imagesSpotifybl),
                ),
                Spacer(),
                Text(
                  'Enjoy listening to music',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFDADADA),
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF797979),
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),
                BasicAppButton(
                  text: 'Get started',
                  onPressed: () {
                    // Navigator.pushReplacement(context, newRoute);
                  },
                ),
              ],
            ),
          ),
          Container(
            color: const Color.fromRGBO(0, 0, 0, 0.15),
          )
        ],
      ),
    );
  }
}
