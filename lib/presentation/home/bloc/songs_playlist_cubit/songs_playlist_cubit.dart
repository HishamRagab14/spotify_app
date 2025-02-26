import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/domain/entities/songs/song_entity.dart';
import 'package:spotify_app/domain/use_cases/songs/getl_all_songs_playlist_use_case.dart';
import 'package:spotify_app/service_locator.dart';

part 'songs_playlist_state.dart';

class SongsPlaylistCubit extends Cubit<SongsPlaylistState> {
  SongsPlaylistCubit() : super(SongsPlaylistInitial());
  Future<void> getSongsPlaylist() async {
    var result = await serviceLocator<GetlAllSongsPlaylistUseCase>().call();
    result.fold(
      (l) {
        emit(
          SongsPlaylistFailure(
            errMessage: l.toString(),
          ),
        );
      },
      (r) {
        emit(SongsPlaylistSuccess(songs: r));
      },
    );
  }
}
