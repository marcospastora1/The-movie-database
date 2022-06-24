import 'package:ekko/domain/movies/models/movies.model.dart';

abstract class IMoviesRepository {
  Future<List<MoviesModel>> getTrendMovies();
}
