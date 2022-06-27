import 'package:ekko/domain/movies/models/movies.model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GridMoviesWidget extends StatelessWidget {
  final int index;
  final List<MoviesModel>? moviesList;
  final VoidCallback onTap;

  const GridMoviesWidget({
    required this.index,
    required this.moviesList,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: .47,
      ),
      itemCount: index,
      itemBuilder: (_, index) {
        return _MoviesWidget(
          image: moviesList![index].posterPath,
          titulo: moviesList![index].title,
          lancamento: moviesList![index].releaseDate,
          onTap: () {},
        );
      },
    );
  }
}

class _MoviesWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String image;
  final String titulo;
  final String lancamento;

  _MoviesWidget({
    required this.onTap,
    required this.image,
    required this.titulo,
    required this.lancamento,
  });

  final dateFormat = DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xFF2F2B3C),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: onTap,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
                color: Color(0xFF2F2B3C),
              ),
              child: Image.network(
                'https://image.tmdb.org/t/p/w500/$image',
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(3),
              child: SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Text(
                      titulo,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    Positioned(
                      bottom: 3,
                      child: Text(
                        dateFormat.format(DateTime.parse(lancamento)),
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                    Positioned(
                      bottom: 3,
                      right: 0,
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
