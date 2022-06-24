import 'package:ekko/infrastructure/dal/services/data/movies.data.dart';
import 'package:equatable/equatable.dart';

class MoviesModel extends Equatable {
  final List<int> genreId;
  final String originalLanguage;
  final String originalTitle;
  final double voteAverage;
  final String releaseDate;
  final int voteCount;
  final String backdropPath;
  final String posterPath;
  final String mediaType;
  final int id;
  final bool video;
  final String overview;
  final String title;
  final bool adult;
  final double popularity;

  const MoviesModel({
    required this.genreId,
    required this.originalLanguage,
    required this.originalTitle,
    required this.voteAverage,
    required this.releaseDate,
    required this.voteCount,
    required this.backdropPath,
    required this.posterPath,
    required this.mediaType,
    required this.id,
    required this.video,
    required this.overview,
    required this.title,
    required this.adult,
    required this.popularity,
  });

  factory MoviesModel.fromData(MoviessData data) {
    return MoviesModel(
      genreId: data.genreId,
      originalLanguage: data.originalLanguage,
      originalTitle: data.originalTitle,
      voteAverage: data.voteAverage,
      releaseDate: data.releaseDate,
      voteCount: data.voteCount,
      backdropPath: data.backdropPath,
      posterPath: data.posterPath,
      mediaType: data.mediaType,
      id: data.id,
      video: data.video,
      overview: data.overview,
      title: data.title,
      adult: data.adult,
      popularity: data.popularity,
    );
  }

  @override
  List<Object?> get props => [
        genreId,
        originalLanguage,
        originalTitle,
        voteAverage,
        releaseDate,
        voteCount,
        backdropPath,
        posterPath,
        mediaType,
        id,
        video,
        overview,
        title,
        adult,
        popularity,
      ];
}
