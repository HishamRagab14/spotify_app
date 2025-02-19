import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/use%20cases/use_case.dart';
import 'package:spotify_app/domain/repository/auth/auth_repo.dart';
import 'package:spotify_app/service_locator.dart';

class SigninWithGoogleUseCase implements UseCase<Either,void> {
  @override
  Future<Either> call({void params}) async{
    return serviceLocator<AuthRepo>().signinWithGoogle();
  }
  
  
}