// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GenereList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenereList _$GenereListFromJson(Map<String, dynamic> json) => GenereList(
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genres.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenereListToJson(GenereList instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
