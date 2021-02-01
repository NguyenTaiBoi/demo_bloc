import 'package:flutter/cupertino.dart';

class LoginController {
  BuildContext buildContext;
  TextEditingController emailController;
  TextEditingController passwordController;

  LoginController({this.buildContext}) {
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }
}