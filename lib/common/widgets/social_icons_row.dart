import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/core/utils/assets.dart';
import 'package:spotify_app/domain/use_cases/auth/signin_with_google_use_case.dart';
import 'package:spotify_app/presentation/root/pages/root.dart';
import 'package:spotify_app/service_locator.dart';

class SocialIconsRow extends StatelessWidget {
  const SocialIconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: GestureDetector(
            onTap: () async {
              var result =
                  await serviceLocator<SigninWithGoogleUseCase>().call();
              result.fold(
                (l) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(l)));
                },
                (r) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => RootPage()),
                    (route) => false,
                  );
                },
              );
            },
            child: SvgPicture.asset(Assets.imagesGoogleicon),
          ),
        ),
        GestureDetector(
          child: SvgPicture.asset(
            Assets.imagesAppleicon,
            colorFilter: ColorFilter.mode(
              context.isDarkMode ? Colors.white : Colors.black,
              BlendMode.srcIn,
            ),
            height: 34,
          ),
        ),
      ],
    );
  }
}
