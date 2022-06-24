import 'package:ekko/infrastructure/navigation/bindings/controllers/home.controller.binding.dart';
import 'package:ekko/presentation/home/controller/home.controller.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks.dart';

void main() {
  test('Should return correct movies field', () {
    final field = makeMoviesField();
    expect(field.value, []);
  });

  test('Should return correct controller model', () {
    final moviesRepository = MoviesRepositoryMock();
    final loading = LoadingControllerMock();

    final controller = makeHomeController(
      moviesRepository: moviesRepository,
      loading: loading,
      movies: makeMoviesField(),
    );

    expect(controller, isA<HomeController>());
  });
}
