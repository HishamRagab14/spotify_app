import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spotify_app/domain/entities/songs/song_entity.dart';

class SongModel {
  String? title;
  String? artist;
  num? duration;
  Timestamp? releaseDate;

  SongModel({
    required this.title,
    required this.artist,
    required this.duration,
    required this.releaseDate,
  });
  factory SongModel.fromJson(Map<String, dynamic> json) {
    return SongModel(
      title: json['title'],
      artist: json['artist'],
      duration: json['duration'],
      releaseDate: json['releaseDate'],
    );
  }

  // SongModel.toJson(){}
}

extension SongModelX on SongModel {
  SongEntity toEntity() {
    return SongEntity(
      title: title!,
      artist: artist!,
      duration: duration!,
      releaseDate: releaseDate!,
    );
  }
}
