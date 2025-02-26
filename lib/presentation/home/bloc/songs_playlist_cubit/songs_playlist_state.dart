part of 'songs_playlist_cubit.dart';

sealed class SongsPlaylistState {}

final class SongsPlaylistInitial extends SongsPlaylistState {}

final class SongsPlaylistLoading extends SongsPlaylistState {}

final class SongsPlaylistSuccess extends SongsPlaylistState {
  final List<SongEntity> songs;

  SongsPlaylistSuccess({required this.songs});
}

final class SongsPlaylistFailure extends SongsPlaylistState {
  final String errMessage;

  SongsPlaylistFailure({required this.errMessage});
}
