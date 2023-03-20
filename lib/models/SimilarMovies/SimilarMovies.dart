import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/models/Result/Result.dart';
part 'SimilarMovies.g.dart';

@JsonSerializable()
class SimilarMovies {
  int? page;
  List<Result?>? results;
  int? total_pages;
  int? total_results;

  SimilarMovies({this.page, this.results, this.total_pages, this.total_results});

  factory SimilarMovies.fromJson(Map<String, dynamic> json) => _$SimilarMoviesFromJson(json);
  Map<String, dynamic> toJson() => _$SimilarMoviesToJson(this);
}
