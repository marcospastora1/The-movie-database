import 'package:ekko/infrastructure/dal/services/data/movies.data.dart';

import 'package:json_annotation/json_annotation.dart';

part 'get_trend_movies.response.g.dart';

@JsonSerializable()
class GetTrendMoviesResponse {
  final List<MoviessData> results;

  const GetTrendMoviesResponse({required this.results});

  factory GetTrendMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetTrendMoviesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetTrendMoviesResponseToJson(this);
}
