import 'package:json_annotation/json_annotation.dart';

part 'movies.data.g.dart';

@JsonSerializable()
class MoviessData {
  @JsonKey(name: 'genre_ids')
  final List<int> genreId;

  @JsonKey(name: 'original_language')
  final String originalLanguage;

  @JsonKey(name: 'original_title')
  final String originalTitle;

  @JsonKey(name: 'vote_average')
  final double voteAverage;

  @JsonKey(name: 'release_date')
  final String releaseDate;

  @JsonKey(name: 'vote_count')
  final int voteCount;

  @JsonKey(name: 'backdrop_path')
  final String backdropPath;

  @JsonKey(name: 'poster_path')
  final String posterPath;

  @JsonKey(name: 'media_type')
  final String mediaType;

  final int id;
  final bool video;
  final String overview;
  final String title;
  final bool adult;
  final double polpularity;

  const MoviessData({
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
    required this.polpularity,
  });

  factory MoviessData.fromJson(Map<String, dynamic> json) =>
      _$MoviessDataFromJson(json);

  Map<String, dynamic> toJson() => _$MoviessDataToJson(this);
}
