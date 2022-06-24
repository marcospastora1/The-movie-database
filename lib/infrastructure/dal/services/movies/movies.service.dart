import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/movies_service.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/domain/core/utils/api_key.dart';
import 'package:ekko/infrastructure/dal/services/data/movies.data.dart';
import 'package:ekko/infrastructure/dal/services/movies/dto/get_trend_movies.response.dart';

class MoviesService implements IMoviesService {
  final IHttpConnect _connect;

  const MoviesService(IHttpConnect connect) : _connect = connect;

  @override
  Future<List<MoviessData>> getTrendMovies() async {
    final response = await _connect.get(
      'trending/all/week?api_key=$apiKey&language=pt-BR',
      decoder: GetTrendMoviesResponse.fromJson,
    );

    if (response.success) {
      return response.payload!.results!;
    } else {
      switch (response.statusCode) {
        default:
          throw DefaultException(message: 'Falha ao pegar filmes');
      }
    }
  }
}
