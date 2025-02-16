import 'package:flutter/material.dart';
import 'package:spotify_app/core/configs/theme/app_theme.dart';
import 'package:spotify_app/presentation/splash/pages/splash_view.dart';

void main() {
  runApp(const SpotifyMusic());
}

class SpotifyMusic extends StatelessWidget {
  const SpotifyMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: SplashView(),
    );
  }
}
