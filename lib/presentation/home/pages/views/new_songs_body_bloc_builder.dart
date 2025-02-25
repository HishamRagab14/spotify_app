import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/presentation/home/bloc/new_songs_cubit/new_songs_cubit.dart';
import 'package:spotify_app/presentation/home/pages/views/new_songs_view_body.dart';

class NewSongsViewBodyBlocBuilder extends StatelessWidget {
  const NewSongsViewBodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewSongsCubit, NewSongsState>(
      builder: (context, state) {
        if (state is NewSongsLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is NewSongsSuccess) {
          return NewSongsViewBody(
            songs: state.songs,
          );
        }
        return Container();
      },
    );
  }
}
