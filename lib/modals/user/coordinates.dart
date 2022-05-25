import 'package:json_annotation/json_annotation.dart';

part 'coordinates.g.dart';

@JsonSerializable()
class Coordinates {
  String? latitude;
  String? longitude;

  Coordinates({this.latitude, this.longitude});

  @override
  String toString() {
    return 'Coordinates(latitude: $latitude, longitude: $longitude)';
  }

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return _$CoordinatesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CoordinatesToJson(this);
}
