import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/presentation/home/bloc/new_songs_cubit/new_songs_cubit.dart';
import 'package:spotify_app/presentation/home/pages/views/new_songs_body_bloc_builder.dart';

class NewSongsView extends StatelessWidget {
  const NewSongsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewSongsCubit()..getNewSongs(),
      child: SizedBox(
        height: 200,
        child: NewSongsViewBodyBlocBuilder(),
      ),
    );
  }
}
