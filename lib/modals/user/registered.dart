import 'package:json_annotation/json_annotation.dart';

part 'registered.g.dart';

@JsonSerializable()
class Registered {
  String? date;
  int? age;

  Registered({this.date, this.age});

  @override
  String toString() => 'Registered(date: $date, age: $age)';

  factory Registered.fromJson(Map<String, dynamic> json) {
    return _$RegisteredFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RegisteredToJson(this);
}
