import 'package:ekko/domain/core/abstractions/domain/repositories/movies_repository.interface.dart';
import 'package:ekko/domain/core/abstractions/presentation/controllers/login/home_controller.interface.dart';
import 'package:ekko/domain/movies/models/movies.model.dart';
import 'package:ekko/domain/core/abstractions/presentation/stream_field.interface.dart';
import 'package:ekko/presentation/shared/loading/loading.interface.dart';
import 'package:get/get.dart';

class HomeController extends GetxController implements IHomeController {
  final IMoviesRepository _moviesRepository;
  final ILoadingController _loading;
  final IStreamField<List<MoviesModel>?> _movies;

  HomeController({
    required IMoviesRepository moviesRepository,
    required ILoadingController loading,
    required IStreamField<List<MoviesModel>?> movies,
  })  : _moviesRepository = moviesRepository,
        _loading = loading,
        _movies = movies;

  @override
  void onReady() async {
    await loadTrendMovies();
    super.onReady();
  }

  @override
  Future<void> loadTrendMovies() async {
    try {
      _loading.isLoading = true;
      final response = await _moviesRepository.getTrendMovies();
      _movies.value = response;
    } catch (err) {
      rethrow;
    } finally {
      _loading.isLoading = false;
    }
  }

  @override
  IStreamField<List<MoviesModel>?> get movies => _movies;
}
