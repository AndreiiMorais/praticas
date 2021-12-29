// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:praticas/components/login/custom_login_button_component.dart';
import 'package:praticas/controllers/login_controller.dart';
import 'package:praticas/widgets/custom_textfield_widget.dart';

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
              CustomTextFieldWidget(
                hintText: 'Login',
                onChanged: _controller.setLogin,
              ),
              SizedBox(height: 20),
              CustomTextFieldWidget(
                hintText: 'Senha',
                onChanged: _controller.setPass,
                obscureText: true,
              ),
              SizedBox(height: 10), //tambem é possivel usar o Spacer
              CustomLoginButtonComponent(
                loginController: _controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
