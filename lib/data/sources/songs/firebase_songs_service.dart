import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/models/songs/song_model.dart';
import 'package:spotify_app/domain/entities/songs/song_entity.dart';

abstract class FirebaseSongsService {
  Future<Either> getNewsSongs();
}

class FirebaseSongsServiceImpl extends FirebaseSongsService {
  @override
  Future<Either> getNewsSongs() async{
    try {
  List<SongEntity> songs = [];
  var data = await FirebaseFirestore.instance.collection('Songs').orderBy('releaseDate',descending: true).limit(3).get();
  for(var element in data.docs){
    var songModel = SongModel.fromJson(element.data());
    songs.add(
      songModel.toEntity(),
    );
  }
  return Right(songs);
} on Exception catch (e) {
  return Left('Failed to get news songs: $e');}
  }
}
