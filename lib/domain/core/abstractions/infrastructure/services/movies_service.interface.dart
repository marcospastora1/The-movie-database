import 'package:ekko/infrastructure/dal/services/data/movies.data.dart';

abstract class IMoviesService {
  Future<List<MoviessData>> getTrendMovies();
}
