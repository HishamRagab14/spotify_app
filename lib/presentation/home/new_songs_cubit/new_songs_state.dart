part of 'new_songs_cubit.dart';

sealed class NewSongsState {}

final class NewSongsInitial extends NewSongsState {}
final class NewSongsLoading extends NewSongsState {}
final class NewSongsSuccess extends NewSongsState {
  final List<SongEntity> songs;

  NewSongsSuccess({required this.songs});
}
final class NewSongsFailure extends NewSongsState {
  final String errMess;

  NewSongsFailure({required this.errMess});
}
