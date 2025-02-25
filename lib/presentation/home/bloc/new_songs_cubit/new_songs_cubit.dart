import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/domain/entities/songs/song_entity.dart';
import 'package:spotify_app/domain/use_cases/songs/get_news_songs_use_case.dart';
import 'package:spotify_app/service_locator.dart';

part 'new_songs_state.dart';

class NewSongsCubit extends Cubit<NewSongsState> {
  NewSongsCubit() : super(NewSongsLoading());
  Future<void> getNewSongs() async {
    var returnedSongs = await serviceLocator<GetNewsSongsUseCase>().call();
    returnedSongs.fold(
      (l) {
        emit(NewSongsFailure(
          errMess: l.toString(),
        ));
      },
      (r) {
        emit(NewSongsSuccess(songs: r));
      },
    );
  }
}
