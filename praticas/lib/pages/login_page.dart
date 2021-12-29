// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:praticas/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      body: Container(
        padding: const EdgeInsets.all(28),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.people,
                  size: MediaQuery.of(context).size.height * 0.4),
              TextField(
                decoration: InputDecoration(hintText: 'Login'),
                textCapitalization: TextCapitalization.words,
                onChanged: _controller.setLogin,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(hintText: 'Password'),
                obscureText: true,
                onChanged: _controller.setPass,
              ),
              SizedBox(height: 10), //tambem é possivel usar o Spacer
              ValueListenableBuilder<bool>(
                valueListenable: _controller.isLoading,
                builder: (_, isLoading, __) => isLoading
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () {
                          _controller.auth().then(
                            (returned) {
                              if (returned) {
                                Navigator.of(context)
                                    .pushReplacementNamed('/home');
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        const Text('Login ou Senha Inválidos!'),
                                    duration: const Duration(seconds: 2),
                                  ),
                                );
                              }
                            },
                          );
                        },
                        child: Text('Login'),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
