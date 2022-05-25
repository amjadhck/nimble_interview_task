import 'package:json_annotation/json_annotation.dart';

part 'dob.g.dart';

@JsonSerializable()
class Dob {
  String? date;
  int? age;

  Dob({this.date, this.age});

  @override
  String toString() => 'Dob(date: $date, age: $age)';

  factory Dob.fromJson(Map<String, dynamic> json) => _$DobFromJson(json);

  Map<String, dynamic> toJson() => _$DobToJson(this);
}
