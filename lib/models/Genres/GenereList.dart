import 'package:movie_app/models/Genres/Genres.dart';
import 'package:json_annotation/json_annotation.dart';
part 'GenereList.g.dart';
@JsonSerializable()
class GenereList
{
 List<Genres>? genres; 
 GenereList({this.genres});

  factory GenereList.fromJson(Map<String, dynamic> json) => _$GenereListFromJson(json);
  Map<String, dynamic> toJson() => _$GenereListToJson(this);
}