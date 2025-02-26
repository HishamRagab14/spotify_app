import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/presentation/home/bloc/songs_playlist_cubit/songs_playlist_cubit.dart';
import 'package:spotify_app/presentation/home/pages/views/all_songs_playlist_view_body.dart';

class AllSongsPlaylistViewBlocBuilder extends StatelessWidget {
  const AllSongsPlaylistViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongsPlaylistCubit, SongsPlaylistState>(
      builder: (context, state) {
        if (state is SongsPlaylistLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is SongsPlaylistSuccess) {
          return AllSongsPlaylistViewBody(songs: state.songs,);
        } else {
          return Container();
        }
      },
    );
  }
}
