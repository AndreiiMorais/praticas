import 'package:flutter/cupertino.dart';
import 'package:praticas/services/prefs_services.dart';

class LoginController {
  ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
  String? _login;
  setLogin(String value) => _login = value;

  String? _pass;
  setPass(String value) => _pass = value;

  Future<bool> auth() async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 2));
    isLoading.value = false;
    if (_login == 'admin' && _pass == 'admin') {
      PrefsServices.save(_login!);
      return true;
    }
    return false;
  }
}
