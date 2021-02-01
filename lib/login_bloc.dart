import 'dart:async';
import 'package:demo_bloc/Validation.dart';

String kPassNullError = "password is null";
String kEmailNullError = "email is null";

class LoginBloc{
  StreamController _emialController = new StreamController();

  Stream get emailStream => _emialController.stream;

  bool isValiInfo(String email) {
    if(!Validator.isEmail(email)){
      _emialController.sink.addError(kEmailNullError);
      return false;
    }
    _emialController.sink.add("ok");
    return true;
  }
}
