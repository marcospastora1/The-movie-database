import 'package:ekko/domain/core/abstractions/infrastructure/response.model.dart';
import 'package:ekko/infrastructure/dal/services/data/movies.data.dart';
import 'package:ekko/infrastructure/dal/services/movies/dto/get_trend_movies.response.dart';

const successTrendMoviesResponse = Response(
  statusCode: 200,
  payload: GetTrendMoviesResponse(
    results: [
      MoviessData(
        genreId: [1, 2, 3],
        originalLanguage: 'en',
        originalTitle: 'Back to the future',
        voteAverage: 9,
        releaseDate: '1985-12-25',
        voteCount: 5154,
        backdropPath: 'backdropPath',
        posterPath: 'posterPath',
        mediaType: 'movie',
        id: 55,
        video: false,
        overview: 'Resumo do filme',
        title: 'De volta para o futuro',
        adult: false,
        polpularity: 8000,
      ),
    ],
  ),
);

const errorTrendMoviesResponse = Response(
  statusCode: 400,
  payload: GetTrendMoviesResponse(results: null),
);
