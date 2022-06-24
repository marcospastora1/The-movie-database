import 'package:ekko/domain/core/abstractions/domain/repositories/movies_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/movies/movies.repository.dart';
import 'package:ekko/infrastructure/dal/inject.dart';
import 'package:ekko/infrastructure/dal/services/movies/movies.service.dart';

class MoviesRepositoryBinding {
  late IMoviesRepository _moviesRepository;
  IMoviesRepository get repository => _moviesRepository;

  MoviesRepositoryBinding() {
    final connect = Inject.find<IHttpConnect>();
    final moviesService = MoviesService(connect);
    _moviesRepository = MoviesRepository(moviesService);
  }
}
