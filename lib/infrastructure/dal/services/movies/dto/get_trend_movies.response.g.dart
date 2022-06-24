// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_trend_movies.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTrendMoviesResponse _$GetTrendMoviesResponseFromJson(
        Map<String, dynamic> json) =>
    GetTrendMoviesResponse(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MoviessData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetTrendMoviesResponseToJson(
        GetTrendMoviesResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
