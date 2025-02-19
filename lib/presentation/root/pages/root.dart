import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/root/pages/views/root_page_body.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RootPageBody(),
    );
  }
}
