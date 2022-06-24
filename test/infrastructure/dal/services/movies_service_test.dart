import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/movies_service.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/domain/core/utils/api_key.dart';
import 'package:ekko/infrastructure/dal/services/movies/movies.service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks.dart';
import 'mocks/movies_mocks/movies.mocks.dart';

void main() {
  late IHttpConnect connect;
  late IMoviesService moviesService;

  setUpAll(() {
    connect = ConnectMock();
    moviesService = MoviesService(connect);
  });

  group('Trend Movies', () {
    const url = 'trending/all/week?api_key=$apiKey&language=pt-BR';
    test(
      'Should return list movies with success',
      () async {
        when(
          () => connect.get(url, decoder: any(named: 'decoder')),
        ).thenAnswer((_) async => successTrendMoviesResponse);

        final response = await moviesService.getTrendMovies();
        expect(response, successTrendMoviesResponse.payload!.results!);
      },
    );

    test(
      'Should return movies with default exception',
      () async {
        when(
          () => connect.get(url, decoder: any(named: 'decoder')),
        ).thenAnswer((_) async => errorTrendMoviesResponse);

        final future = moviesService.getTrendMovies();
        expect(future, throwsA(isA<DefaultException>()));
      },
    );
  });
}
