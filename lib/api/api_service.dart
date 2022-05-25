import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../modals/user/result.dart';

Future<Result> postUserDetails(String username, String password) async {
  Result? result;
  try {
    final response =
        await http.post(Uri.parse('https://randomuser.me/api/?results=5'), body: {
      'username': username,
      'password': password,
    });
    print(response.statusCode);

    if (response.statusCode == 200 || response.statusCode == 201) {
      print(response.body);
      result = Result.fromJson(json.decode(response.body));
    }
  } on SocketException {
    print("socket exception");
  }
  return result!;
}