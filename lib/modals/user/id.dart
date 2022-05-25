import 'package:json_annotation/json_annotation.dart';

part 'id.g.dart';

@JsonSerializable()
class Id {
  String? name;
  dynamic value;

  Id({this.name, this.value});

  @override
  String toString() => 'Id(name: $name, value: $value)';

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);

  Map<String, dynamic> toJson() => _$IdToJson(this);
}
