import 'package:ekko/domain/core/abstractions/domain/repositories/movies_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/controllers/login/home_controller.interface.dart';
import 'package:ekko/domain/movies/models/movies.mock.dart';
import 'package:ekko/infrastructure/navigation/bindings/controllers/home.controller.binding.dart';
import 'package:ekko/presentation/home/controller/home.controller.dart';
import 'package:ekko/presentation/shared/loading/loading.interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks.dart';

void main() {
  late IHomeController homeController;
  late IMoviesRepository moviesRepository;
  late ILoadingController loading;

  setUp(() {
    moviesRepository = MoviesRepositoryMock();
    loading = LoadingControllerMock();
    homeController = HomeController(
      moviesRepository: moviesRepository,
      loading: loading,
      movies: makeMoviesField(),
    );
  });

  group('load trend movies', () {
    test('Should load movies with success', () async {
      when(() => moviesRepository.getTrendMovies())
          .thenAnswer((_) async => listMoviesMock);

      await homeController.loadTrendMovies();

      expect(homeController.movies.value, listMoviesMock);
    });
  });
}
