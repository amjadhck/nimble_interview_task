import 'package:json_annotation/json_annotation.dart';

import 'info.dart';
import 'result.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  List<Result>? results;
  Info? info;

  User({this.results, this.info});

  @override
  String toString() => 'User(results: $results, info: $info)';

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
