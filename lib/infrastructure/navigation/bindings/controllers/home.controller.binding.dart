import 'package:ekko/domain/core/abstractions/domain/repositories/movies_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/controllers/login/home_controller.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/stream_field.interface.dart';
import 'package:ekko/domain/core/models/rx_field.model.dart';
import 'package:ekko/domain/movies/models/movies.model.dart';
import 'package:ekko/infrastructure/dal/inject.dart';
import 'package:ekko/infrastructure/navigation/bindings/domains/movies.repository.binding.dart';
import 'package:ekko/presentation/home/controller/home.controller.dart';
import 'package:ekko/presentation/shared/loading/loading.interface.dart';
import 'package:get/get.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    final moviesBinding = MoviesRepositoryBinding();
    final loading = Inject.find<ILoadingController>();
    Inject.put<IHomeController>(
      () => makeHomeController(
        moviesRepository: moviesBinding.repository,
        loading: loading,
        movies: makeMoviesField(),
      ),
    );
  }
}

IStreamField<List<MoviesModel>?> makeMoviesField() {
  return RxFieldModel<List<MoviesModel>?>(value: []);
}

IHomeController makeHomeController({
  required IMoviesRepository moviesRepository,
  required ILoadingController loading,
  required IStreamField<List<MoviesModel>?> movies,
}) {
  return HomeController(
    moviesRepository: moviesRepository,
    loading: loading,
    movies: movies,
  );
}
