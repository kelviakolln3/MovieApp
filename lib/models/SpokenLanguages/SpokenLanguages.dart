import 'package:json_annotation/json_annotation.dart';
part 'SpokenLanguages.g.dart';
@JsonSerializable()
class SpokenLanguages {
  String? english_name;
  String? iso_639_1;
  String? name;
  SpokenLanguages({this.english_name, this.iso_639_1, this.name});
  factory SpokenLanguages.fromJson(Map<String, dynamic> json) => _$SpokenLanguagesFromJson(json);
  Map<String, dynamic> toJson() => _$SpokenLanguagesToJson(this);
}