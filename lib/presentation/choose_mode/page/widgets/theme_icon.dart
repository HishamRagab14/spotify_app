import 'package:flutter/material.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';


class ThemeIcon extends StatelessWidget {
  const ThemeIcon({
    super.key, required this.text, required this.icon,
  });
  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 38,
          backgroundColor: Color.fromRGBO(48, 57, 60, 0.5),
          child: IconButton(
            onPressed: () {},
            icon: icon,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
