import 'package:get_it/get_it.dart';
import 'package:spotify_app/data/repository_impl/auth/auth_repo_impl.dart';
import 'package:spotify_app/data/repository_impl/songs/songs_repo_implementation.dart';
import 'package:spotify_app/data/sources/auth/firebase_auth_service.dart';
import 'package:spotify_app/data/sources/songs/firebase_songs_service.dart';
import 'package:spotify_app/domain/repository/auth/auth_repo.dart';
import 'package:spotify_app/domain/repository/songs/songs_repo.dart';
import 'package:spotify_app/domain/use_cases/auth/signin_use_case.dart';
import 'package:spotify_app/domain/use_cases/auth/signin_with_google_use_case.dart';
import 'package:spotify_app/domain/use_cases/auth/signup_use_case.dart';
import 'package:spotify_app/domain/use_cases/songs/get_news_songs_use_case.dart';
import 'package:spotify_app/domain/use_cases/songs/getl_all_songs_playlist_use_case.dart';

final serviceLocator = GetIt.instance;
Future<void> initializeDependencies() async {
  serviceLocator.registerSingleton<FirebaseAuthService>(
    FirebaseAuthServiceImpl(),
  );
  serviceLocator.registerSingleton<AuthRepo>(
    AuthRepoImpl(),
  );
  serviceLocator.registerSingleton<SignupUseCase>(
    SignupUseCase(),
  );
  serviceLocator.registerSingleton<SigninUseCase>(
    SigninUseCase(),
  );
  serviceLocator.registerSingleton<SigninWithGoogleUseCase>(
    SigninWithGoogleUseCase(),
  );
  serviceLocator.registerSingleton<FirebaseSongsService>(
    FirebaseSongsServiceImpl(),
  );
  serviceLocator.registerSingleton<SongsRepo>(
    SongsRepoImplementation(),
  );
  serviceLocator.registerSingleton<GetNewsSongsUseCase>(
    GetNewsSongsUseCase(),
  );
  serviceLocator.registerSingleton<GetlAllSongsPlaylistUseCase>(
    GetlAllSongsPlaylistUseCase(),
  );
}
