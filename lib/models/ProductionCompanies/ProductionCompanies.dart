import 'package:json_annotation/json_annotation.dart';
part 'ProductionCompanies.g.dart';
@JsonSerializable()
class ProductionCompanies {
  int? id;
  String? logo_path;
  String? name;
  String? origin_country;

  ProductionCompanies({this.id, this.logo_path, this.name, this.origin_country});
  factory ProductionCompanies.fromJson(Map<String, dynamic> json) => _$ProductionCompaniesFromJson(json);
  Map<String, dynamic> toJson() => _$ProductionCompaniesToJson(this);
}