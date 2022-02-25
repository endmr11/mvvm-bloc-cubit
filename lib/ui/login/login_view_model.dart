import 'package:flutter/material.dart';
import 'package:mvvmtest/ui/login/bloc/login_bloc.dart';
import 'package:mvvmtest/ui/login/login.dart';

abstract class LoginViewModel extends State<Login> {
  LoginBloc? loginBloc;

  @override
  void initState() {
    super.initState();
    print(">>>>> INIT STATE WORKING");
    loginBloc = LoginBloc();
  }

  Future<void> fetchUser(String email, String password) async {
    print(">>>>> FETCHUSER FUNCTION WORKING");
    print(email + " " + password);
    loginBloc?.add(LoginProcessStart());
  }

  @override
  void dispose() {
    super.dispose();
    loginBloc?.close();
  }
}
