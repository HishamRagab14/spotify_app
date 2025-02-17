import 'package:flutter/material.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';

class BasicAppButton extends StatelessWidget {
  const BasicAppButton({
    super.key,
    this.onPressed,
    required this.text,
    this.height,
    this.backgroundColor,
  });
  final VoidCallback? onPressed;
  final String text;
  final double? height;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.primaryColor,
        minimumSize: Size.fromHeight(height ?? 80),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFFF6F6F6),
        ),
      ),
    );
  }
}
