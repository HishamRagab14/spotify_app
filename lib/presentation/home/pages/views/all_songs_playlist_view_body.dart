import 'package:flutter/material.dart';
import 'package:spotify_app/domain/entities/songs/song_entity.dart';
import 'package:spotify_app/presentation/home/pages/views/all_songs_playlist_view_list_item.dart';

class AllSongsPlaylistViewBody extends StatelessWidget {
  const AllSongsPlaylistViewBody({
    super.key, required this.songs,
  });
  final List<SongEntity> songs;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        5,
        (index) {
          return  AllSongsPlaylistViewListItem(
            title:songs[index].title,
            artist:songs[index].artist,
            duration: songs[index].duration,
          );
        },
      ),
    );
  }
}
