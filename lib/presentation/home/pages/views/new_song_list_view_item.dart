import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/core/configs/constants/app_images_url.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';
import 'package:spotify_app/domain/entities/songs/song_entity.dart';

class NewSongListViewItem extends StatelessWidget {
  const NewSongListViewItem({
    super.key,
    required this.songs,
    required this.index,
  });

  final List<SongEntity> songs;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        '${AppImagesUrl.coverFirestorage}${songs[index].artist} - ${songs[index].title}.jpg?${AppImagesUrl.mediaAlt}',
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 40,
                      width: 40,
                      transform: Matrix4.translationValues(-6, 10, 0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.isDarkMode
                              ? AppColors.darkGrey
                              : Color(0xFFE6E6E6)),
                      child: Icon(
                        Icons.play_arrow_rounded,
                        color:context.isDarkMode? Color(0xFF959595) : Color(0xFF555555),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              songs[index].title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 5),
            Text(
              songs[index].artist,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
