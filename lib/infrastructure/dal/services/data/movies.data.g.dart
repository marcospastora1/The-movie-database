// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviessData _$MoviessDataFromJson(Map<String, dynamic> json) => MoviessData(
      genreId:
          (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      releaseDate: json['release_date'] as String,
      voteCount: json['vote_count'] as int,
      backdropPath: json['backdrop_path'] as String,
      posterPath: json['poster_path'] as String,
      mediaType: json['media_type'] as String,
      id: json['id'] as int,
      video: json['video'] as bool,
      overview: json['overview'] as String,
      title: json['title'] as String,
      adult: json['adult'] as bool,
      popularity: (json['popularity'] as num).toDouble(),
    );

Map<String, dynamic> _$MoviessDataToJson(MoviessData instance) =>
    <String, dynamic>{
      'genre_ids': instance.genreId,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'vote_average': instance.voteAverage,
      'release_date': instance.releaseDate,
      'vote_count': instance.voteCount,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'media_type': instance.mediaType,
      'id': instance.id,
      'video': instance.video,
      'overview': instance.overview,
      'title': instance.title,
      'adult': instance.adult,
      'popularity': instance.popularity,
    };
