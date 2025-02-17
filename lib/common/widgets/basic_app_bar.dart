import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BasicAppBar({super.key, this.title});
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title ?? const Text(''),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: context.isDarkMode
                ? Colors.white.withAlpha(8)
                : Colors.black.withAlpha(10),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: context.isDarkMode ? Colors.white : Colors.black,
            size: 17,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
