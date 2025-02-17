import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_app/core/utils/assets.dart';
import 'package:spotify_app/presentation/choose_mode/page/choose_mode.dart';

class Intros extends StatelessWidget {
  const Intros({
    super.key,
    required this.backgroundImage,
    required this.title,
    required this.subtitle,
    required this.buttonText,

  });
  final String backgroundImage;
  final String title;
  final Widget subtitle;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                backgroundImage,
              ),
            ),
          ),
        ),
        Container(
          color: const Color.fromRGBO(0, 0, 0, 0.15),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
            child: Column(
              children: [
                Align(
                  // alignment: Alignment.topCenter,
                  child: SvgPicture.asset(Assets.imagesSpotifybl),
                ),
                Spacer(),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFDADADA),
                    fontSize: 21,
                  ),
                ),
                SizedBox(
                  height: 41,
                ),
                subtitle,
                SizedBox(
                  height: 40,
                ),
                BasicAppButton(
                  text: buttonText,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChooseMode(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
