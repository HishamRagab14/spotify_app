import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/sources/songs/firebase_songs_service.dart';
import 'package:spotify_app/domain/repository/songs/songs_repo.dart';
import 'package:spotify_app/service_locator.dart';

class SongsRepoImplementation extends SongsRepo {
  @override
  Future<Either> getNewsSongs() async{
    return await serviceLocator<FirebaseSongsService>().getNewsSongs();
  }
}
