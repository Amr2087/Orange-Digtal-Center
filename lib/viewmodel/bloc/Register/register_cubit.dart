import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc/view/pages/Register.dart';
import 'package:odc/viewmodel/Database/network/dio_helper.dart';

import '../../../constant.dart';
import '../../../view/pages/Login.dart';
import '../../Database/network/end_points.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  static RegisterCubit get(context) => BlocProvider.of(context);
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name  = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController  universityId = TextEditingController();
  TextEditingController gradeId = TextEditingController();
  void register(context){
    var json = {
      "email": email.text.toString(),
      "password": password.text.toString(),
      "name":  name.text.toString(),
      "gender": gender.text.toString(),
      "phoneNumber": phoneNumber.text.toString(),
      "univesityId": universityId.text,
      "gradeId": gradeId.text.toString(),
    };
    DioHelper.postData(url: registerEndPoint, data: json).then((value) {
      if (Token != "" && Token != null && Token.isNotEmpty){
        emit(RegisterSuccess());
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)
        => Login(),
        ));
      }
    }).catchError((e){
      if(e == DioError){
        print(e.response);
      }
      emit(RegisterError());
    });
  }

  void getAllUniversities()async{
    await DioHelper.getData(url: universityEndPoint).then((value){


    }).catchError((error){
      debugPrint(error.toString());
    });
  }
  void getGrades()async{
    await DioHelper.getData(url: gradeEndPoint).then((value){}).catchError((error){
      debugPrint(error.toString());
    });
  }





}
