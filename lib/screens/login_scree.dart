import 'package:flutter/material.dart';
import 'package:nimble_interview_task/api/api_service.dart';
import 'package:nimble_interview_task/screens/home_screen.dart';

TextEditingController _usernameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
        top: true,
        bottom: false,
        child: Form(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(labelText: "Username"),
                  keyboardType: TextInputType.text,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: "Password"),
                  obscureText: true,
                ),
                const SizedBox(height: 10.0),
                ButtonBar(
                  children: <Widget>[
                    ElevatedButton.icon(
                        onPressed: () {
                          _handleSubmitted(context);
                        },
                        icon: const Icon(Icons.arrow_forward),
                        label: const Text('Sign in')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _handleSubmitted(BuildContext context) async {
  final username = _usernameController.text.trim();
  final password = _passwordController.text.trim();

  final _apiResponse = await postUserDetails(username, password);
  if (_apiResponse != null) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (ctx) {
        return HomePage(
          user: _apiResponse,
        );
      }),
      (route) => false,
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Username or Password not found'),
    ));
  }
}
