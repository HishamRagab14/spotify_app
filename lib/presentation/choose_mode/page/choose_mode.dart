import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/core/utils/assets.dart';
import 'package:spotify_app/presentation/choose_mode/bloc/theme_cubit/theme_cubit.dart';
import 'package:spotify_app/presentation/choose_mode/page/widgets/theme_icon.dart';
import 'package:spotify_app/presentation/intro/pages/intro.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    log('Choose Mode');
    return Scaffold(
      body: Intros(
        buttonText: 'Continue',
        backgroundImage: Assets.imagesDualipapn,
        title: 'Choose mode',
        subtitle: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ThemeIcon(
                    icon: SvgPicture.asset(Assets.imagesMoons),
                    text: 'Dark mode',
                    onPressed: () {
                      context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                    },
                  ),
                  ThemeIcon(
                    icon: SvgPicture.asset(Assets.imagesSun),
                    text: 'Light mode',
                    onPressed: () {
                      context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
