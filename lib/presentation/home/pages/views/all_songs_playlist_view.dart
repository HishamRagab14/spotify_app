import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/presentation/home/bloc/songs_playlist_cubit/songs_playlist_cubit.dart';
import 'package:spotify_app/presentation/home/pages/views/all_songs_playlist_view_bloc_builder.dart';

class AllSongsPlaylist extends StatelessWidget {
  const AllSongsPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => SongsPlaylistCubit()..getSongsPlaylist(),
      child: AllSongsPlaylistViewBlocBuilder(),
    );
  }
}