import 'package:json_annotation/json_annotation.dart';
part 'ProductionCountries.g.dart';
@JsonSerializable()
class ProductionCountries {
  String? iso_3166_1;
  String? name;
  ProductionCountries({this.iso_3166_1, this.name});
  factory ProductionCountries.fromJson(Map<String, dynamic> json) => _$ProductionCountriesFromJson(json);
  Map<String, dynamic> toJson() => _$ProductionCountriesToJson(this);
}