import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/models/Genres/Genres.dart';
import 'package:movie_app/models/ProductionCompanies/ProductionCompanies.dart';
import 'package:movie_app/models/ProductionCountries/ProductionCountries.dart';
import 'package:movie_app/models/SpokenLanguages/SpokenLanguages.dart';
part 'Movie.g.dart';
@JsonSerializable()
class Movie {
  bool? adult;
  String? backdrop_path;
  int? budget;
  List<Genres>? genres;
  String? homepage;
  int? id;
  String? imdb_id;
  String? original_language;
  String? original_title;
  String? overview;
  double? popularity;
  String? poster_path;
  List<ProductionCompanies>? productionCompanies;
  List<ProductionCountries>? productionCountries;
  String? release_date;
  int? revenue;
  int? runtime;
  List<SpokenLanguages>? spoken_languages;
  String? status;
  String? tagline;
  String? title;
  bool? video;
  double? vote_average;
  int? vote_count;

  Movie(
      {this.adult,
      this.backdrop_path,
      this.budget,
      this.genres,
      this.homepage,
      this.id,
      this.imdb_id,
      this.original_language,
      this.original_title,
      this.overview,
      this.popularity,
      this.poster_path,
      this.productionCompanies,
      this.productionCountries,
      this.release_date,
      this.revenue,
      this.runtime,
      this.spoken_languages,
      this.status,
      this.tagline,
      this.title,
      this.video,
      this.vote_average,
      this.vote_count});

      factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
      Map<String, dynamic> toJson() => _$MovieToJson(this);
}