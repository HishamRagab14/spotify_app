import 'package:get_it/get_it.dart';
import 'package:spotify_app/data/repository_impl/auth/auth_repo_impl.dart';
import 'package:spotify_app/data/sources/auth/firebase_auth_service.dart';
import 'package:spotify_app/domain/repository/auth/auth_repo.dart';
import 'package:spotify_app/domain/use_cases/auth/signup_use_case.dart';

final serviceLocator = GetIt.instance;
Future<void> initializeDependencies() async{
  serviceLocator.registerSingleton<FirebaseAuthService>(
    FirebaseAuthServiceImpl(),
  );
  serviceLocator.registerSingleton<AuthRepo>(
    AuthRepoImpl(),
  );
  serviceLocator.registerSingleton<SignupUseCase>(
    SignupUseCase(),
  );
}