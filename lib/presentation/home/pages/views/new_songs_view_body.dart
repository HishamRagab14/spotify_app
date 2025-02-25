import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:spotify_app/domain/entities/songs/song_entity.dart';
import 'package:spotify_app/presentation/home/pages/views/new_song_list_view_item.dart';

class NewSongsViewBody extends StatefulWidget {
  const NewSongsViewBody({super.key, required this.songs});
  final List<SongEntity> songs;

  @override
  State<NewSongsViewBody> createState() => _NewSongsViewBodyState();
}

class _NewSongsViewBodyState extends State<NewSongsViewBody> {
  @override
  Widget build(BuildContext context) {
    log("Songs List: ${widget.songs.length}");
    return ListView.separated(
      itemBuilder: (context, index) {
        return NewSongListViewItem(songs: widget.songs, index: index);
      },
      separatorBuilder: (context, index) => const SizedBox(width: 15,),
      itemCount: widget.songs.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
