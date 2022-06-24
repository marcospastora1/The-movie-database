import 'package:ekko/domain/core/abstractions/domain/repositories/movies_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/services/movies_service.interface.dart';
import 'package:ekko/domain/movies/models/movies.mock.dart';
import 'package:ekko/domain/movies/movies.repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks.dart';
import 'mocks/movies.mocks.dart';

void main() {
  late IMoviesService moviesService;
  late IMoviesRepository moviesRepository;

  setUpAll(() {
    moviesService = MoviesServiceMock();
    moviesRepository = MoviesRepository(moviesService);
  });

  test('Should return list movies model', () async {
    when(() => moviesService.getTrendMovies())
        .thenAnswer((_) async => moviesResponseSuccess);

    final response = await moviesRepository.getTrendMovies();

    expect(response, listMoviesMock);
  });
}
