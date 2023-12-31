import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/widgets/auth_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackground(
            child: SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 250,
        ),
        _loginForm(),
        const SizedBox(
          height: 250,
        ),
        const Text(
          "Sign in or create a new account",
          style: TextStyle(fontSize: 14),
        ),
        const SizedBox(
          height: 250,
        ),
      ]),
    )));
  }


Widget _loginForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _usernameController,
          decoration: const InputDecoration(icon: Icon(Icons.mail), labelText: "User"),
        ),
        TextField(
          controller: _passwordController,
          decoration: const InputDecoration(icon: Icon(Icons.lock_open), labelText: "Password"),
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
            child:
                ElevatedButton(onPressed: onLogin, child: const Text('Login')))
      ],
    );
  }
  void onLogin(){
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();
    print('username.$username');
    print('password.$password');
  }


}