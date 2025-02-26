import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/presentation/home/pages/views/play_icon.dart';

class AllSongsPlaylistViewListItem extends StatelessWidget {
  const AllSongsPlaylistViewListItem({
    super.key,
    required this.title,
    required this.artist,
    required this.duration,
  });
  final String title, artist;
  final num duration;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: PlayIcon(),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(
        artist,
        style: TextStyle(
          color: context.isDarkMode ? Color(0xFFD6D6D6) : Color(0xFF000000),
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          
          Text(
            duration.toString().replaceAll('.', ':'),
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 30,
          ),
          Align(
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.favorite_rounded,
                size: 20,
                color: Color(0xFF565656),
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
