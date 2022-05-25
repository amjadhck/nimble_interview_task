import 'package:json_annotation/json_annotation.dart';

part 'timezone.g.dart';

@JsonSerializable()
class Timezone {
  String? offset;
  String? description;

  Timezone({this.offset, this.description});

  @override
  String toString() {
    return 'Timezone(offset: $offset, description: $description)';
  }

  factory Timezone.fromJson(Map<String, dynamic> json) {
    return _$TimezoneFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TimezoneToJson(this);
}
