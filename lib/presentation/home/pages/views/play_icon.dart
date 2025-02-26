import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';

class PlayIcon extends StatelessWidget {
  const PlayIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      transform: Matrix4.translationValues(-6, 10, 0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.isDarkMode
              ? AppColors.darkGrey
              : Color(0xFFE6E6E6)),
      child: Icon(
        Icons.play_arrow_rounded,
        color:context.isDarkMode? Color(0xFF959595) : Color(0xFF555555),
      ),
    );
  }
}