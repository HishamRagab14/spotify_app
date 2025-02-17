import 'package:flutter/material.dart';
import 'package:spotify_app/core/utils/assets.dart';
import 'package:spotify_app/presentation/intro/pages/intro.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Intros(
            buttonText: 'Get started',
            backgroundImage: Assets.imagesAriana,
            title: 'Enjoy listening to music',
            subtitle: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF797979)),
            ),
            
          ),
        ],
      ),
    );
  }
}
