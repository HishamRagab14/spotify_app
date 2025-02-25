import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/models/songs/song_model.dart';
import 'package:spotify_app/domain/entities/songs/song_entity.dart';

abstract class FirebaseSongsService {
  Future<Either> getNewsSongs();
  Future<Either> getAllSongs();
}

class FirebaseSongsServiceImpl extends FirebaseSongsService {
  @override
  Future<Either> getNewsSongs() async {
    try {
      List<SongEntity> songs = [];
      var data = await FirebaseFirestore.instance
          .collection('Songs')
          .orderBy('releaseDate', descending: true)
          .limit(5)
          .get();
      for (var element in data.docs) {
        var songModel = SongModel.fromJson(element.data());
        songs.add(
          songModel.toEntity(),
        );
      }
      log("Converted SongEntity list: ${songs.length}");
      return Right(songs);
    } on Exception catch (e) {
      log("Error fetching songs: $e");
      return Left('Failed to get news songs: $e');
    }
  }

  @override
  Future<Either> getAllSongs() async {
    try {
      var data = await FirebaseFirestore.instance.collection('Songs').get();
      List<SongEntity> songs = [];
      for (var element in data.docs) {
        var songModel = SongModel.fromJson(element.data());
        songs.add(
          songModel.toEntity(),
        );
      }
      return Right(songs);
    } on Exception catch (e) {
      log("Error fetching songs: $e");
      return Left('Failed to get songs playlist: $e');
    }
  }
}
