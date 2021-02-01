import 'dart:ui';

import 'package:demo_bloc/controllers.dart';
import 'package:demo_bloc/login_bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class LoginScreen extends StatelessWidget {

  const LoginScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LoginBloc bloc = new LoginBloc();
    LoginController _controller = new LoginController();
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("LOGO",),
                  SizedBox(height: 80,),
                  StreamBuilder(
                    stream: bloc.emailStream,
                      builder: (context,snapshot)=>TextField(
                        controller: _controller.emailController,
                        decoration: InputDecoration(
                          labelText: "email",
                          errorText: snapshot.hasError ? snapshot.error : null,
                        ),
                  )),
                  SizedBox(height: 10,),
                  FlatButton(
                    onPressed: (){
                        if(bloc.isValiInfo(_controller.emailController.text))
                        {
                          print("bloc is working");
                        }
                    },
                    child: Text("Sign in"),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}