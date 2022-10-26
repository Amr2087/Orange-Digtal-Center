import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
// import 'package:meta/meta.dart';
import 'package:odc/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc/view/pages/NavBar.dart';
import '../../../view/pages/Home.dart';
import '../../Database/network/dio_helper.dart';
import '../../Database/network/end_points.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String message = "Login Screen";
  void login(context) {
    var json = {
      "email": email.text.toString(),
      "password": password.text.toString()
    };
    DioHelper.postData(url: loginEndPoint, data: json).then((value) {
      if (value.statusCode == 200) {
        Token = value.data['data']['accessToken'];
        if (Token != "" && Token != null && Token.isNotEmpty) {
          message = "Success";
          print("");
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => NavBar(),
              ));
        }else{
          message = "Token error";
        }
        emit(LoginSuccess());
      }
    }).catchError((e) {
      message = "Error";
      emit(LoginError());
    });
  }
}
