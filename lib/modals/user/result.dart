import 'package:json_annotation/json_annotation.dart';

import 'dob.dart';
import 'id.dart';
import 'location.dart';
import 'login.dart';
import 'name.dart';
import 'picture.dart';
import 'registered.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  String? gender;
  Name? name;
  Location? location;
  String? email;
  Login? login;
  Dob? dob;
  Registered? registered;
  String? phone;
  String? cell;
  Id? id;
  Picture? picture;
  String? nat;

  Result({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.login,
    this.dob,
    this.registered,
    this.phone,
    this.cell,
    this.id,
    this.picture,
    this.nat,
  });

  @override
  String toString() {
    return 'Result(gender: $gender, name: $name, location: $location, email: $email, login: $login, dob: $dob, registered: $registered, phone: $phone, cell: $cell, id: $id, picture: $picture, nat: $nat)';
  }

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
