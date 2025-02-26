import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/use%20cases/use_case.dart';
import 'package:spotify_app/domain/repository/songs/songs_repo.dart';
import 'package:spotify_app/service_locator.dart';

class GetlAllSongsPlaylistUseCase extends UseCase {
  @override
  Future<Either> call({params}) async{
    return await serviceLocator<SongsRepo>().getAllSongs();

  }
}