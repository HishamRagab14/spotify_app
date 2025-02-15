import 'package:flutter/material.dart';

void main() {
  runApp(const SpotifyMusic());
}

class SpotifyMusic extends StatelessWidget {
  const SpotifyMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(),
    );
  }
}
