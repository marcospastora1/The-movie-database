import 'package:ekko/domain/core/abstractions/domain/repositories/movies_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/movies_service.interface.dart';
import 'package:ekko/domain/movies/models/movies.model.dart';

class MoviesRepository implements IMoviesRepository {
  final IMoviesService _moviesService;

  const MoviesRepository(IMoviesService moviesService)
      : _moviesService = moviesService;

  @override
  Future<List<MoviesModel>> getTrendMovies() async {
    try {
      final response = await _moviesService.getTrendMovies();
      final models = response.map((e) => MoviesModel.fromData(e)).toList();
      return models;
    } catch (err) {
      rethrow;
    }
  }
}
