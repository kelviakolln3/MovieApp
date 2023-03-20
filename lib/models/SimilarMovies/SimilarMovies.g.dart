// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SimilarMovies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimilarMovies _$SimilarMoviesFromJson(Map<String, dynamic> json) =>
    SimilarMovies(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      total_pages: json['total_pages'] as int?,
      total_results: json['total_results'] as int?,
    );

Map<String, dynamic> _$SimilarMoviesToJson(SimilarMovies instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
    };
