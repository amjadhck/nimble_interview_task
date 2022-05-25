import 'package:flutter/material.dart';
import 'package:nimble_interview_task/modals/user/result.dart';

class HomePage extends StatelessWidget {
  final Result user;

  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Welcome'),
      ),
      body: Center(
        child: Text("Hello ${user.name!.first}"),
      ),
    );
  }
}
