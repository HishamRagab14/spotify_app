import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/use%20cases/use_case.dart';
import 'package:spotify_app/data/repository_impl/songs/songs_repo_implementation.dart';
import 'package:spotify_app/service_locator.dart';

class GetNewsSongsUseCase extends UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await serviceLocator<SongsRepoImplementation>().getNewsSongs();
  }
}
