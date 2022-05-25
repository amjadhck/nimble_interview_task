import 'package:json_annotation/json_annotation.dart';

part 'name.g.dart';

@JsonSerializable()
class Name {
  String? title;
  String? first;
  String? last;

  Name({this.title, this.first, this.last});

  @override
  String toString() => 'Name(title: $title, first: $first, last: $last)';

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  Map<String, dynamic> toJson() => _$NameToJson(this);
}
