import 'package:flutter/material.dart';
import 'package:spotify_app/core/configs/constants/app_images_url.dart';
import 'package:spotify_app/domain/entities/songs/song_entity.dart';
import 'package:spotify_app/presentation/home/pages/views/play_icon.dart';

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
                    child: PlayIcon(),
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
