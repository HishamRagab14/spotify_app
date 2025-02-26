import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';

class AllSongsPlaylistTitle extends StatelessWidget {
  const AllSongsPlaylistTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Playlist',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'see more',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: context.isDarkMode? Color(0xFFC6C6C6) : Color(0xFF131313),
          ),
        ),
      ],
    );
  }
}