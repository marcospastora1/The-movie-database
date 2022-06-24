import 'package:ekko/domain/core/abstractions/presentation/stream_field.interface.dart';
import 'package:ekko/domain/movies/models/movies.model.dart';

abstract class IHomeController {
  Future<void> loadTrendMovies();

  IStreamField<List<MoviesModel>?> get movies;
}
