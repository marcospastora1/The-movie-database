import 'package:ekko/domain/core/abstractions/presentation/controllers/login/home_controller.interface.dart';
import 'package:ekko/domain/movies/models/movies.model.dart';
import 'package:ekko/presentation/home/widgets/grid_movies.widget.dart';
import 'package:ekko/presentation/shared/loading/loading.widget.dart';
import 'package:ekko/presentation/shared/view_controller.interface.dart';
import 'package:flutter/material.dart';

class HomeScreen extends ViewController<IHomeController> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<MoviesModel>?>(
      stream: controller.movies.stream,
      initialData: const [],
      builder: (_, snapshot) {
        return StreamBuilder<List<MoviesModel>?>(
          stream: controller.movies.stream,
          builder: (_, snap) {
            return Scaffold(
              backgroundColor: const Color(0xFF19161D),
              appBar: AppBar(
                backgroundColor: const Color(0xFF231F2D),
                title: const Text(
                  'Filmes',
                  style: TextStyle(color: Color(0xFF9182AD)),
                ),
              ),
              body: LoadingWidget(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Text(
                        'Populares',
                        style: TextStyle(color: Color(0xFF9182AD)),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: GridMoviesWidget(
                          index: snap.hasData
                              ? snap.data!.isNotEmpty
                                  ? snap.data!.length
                                  : 0
                              : 0,
                          moviesList: snap.hasData ? snap.data! : [],
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
