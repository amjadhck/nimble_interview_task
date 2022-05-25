import 'package:json_annotation/json_annotation.dart';

import 'coordinates.dart';
import 'street.dart';
import 'timezone.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  Street? street;
  String? city;
  String? state;
  String? country;
  int? postcode;
  Coordinates? coordinates;
  Timezone? timezone;

  Location({
    this.street,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.coordinates,
    this.timezone,
  });

  @override
  String toString() {
    return 'Location(street: $street, city: $city, state: $state, country: $country, postcode: $postcode, coordinates: $coordinates, timezone: $timezone)';
  }

  factory Location.fromJson(Map<String, dynamic> json) {
    return _$LocationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
