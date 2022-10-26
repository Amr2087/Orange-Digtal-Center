import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:odc/model/LoginModel.dart';
import 'package:odc/view/components/Home/PageCard.dart';
import 'package:odc/view/components/Register/DropBox.dart';
import 'package:odc/view/pages/Calendar.dart';
import 'package:odc/view/pages/FAQ.dart';
import 'package:odc/view/pages/Finals.dart';
import 'package:odc/view/pages/Home.dart';
import 'package:odc/view/pages/Lastscreen.dart';
import 'package:odc/view/pages/Lecture.dart';
import 'package:odc/view/pages/Login.dart';
import 'package:odc/view/pages/Midterms.dart';
import 'package:odc/view/pages/NavBar.dart';
import 'package:odc/view/pages/News.dart';
import 'package:odc/view/pages/NewsPressed.dart';
import 'package:odc/view/pages/Notes.dart';
import 'package:odc/view/pages/Notesouter.dart';
import 'package:odc/view/pages/Ourpartners.dart';
import 'package:odc/view/pages/Register.dart';
import 'package:odc/view/pages/Sections.dart';
import 'package:odc/view/pages/Support_.dart';
import 'package:odc/view/pages/Terms&conditions.dart';
import 'package:odc/view/pages/splashscreen.dart';
import 'package:odc/viewmodel/Database/network/dio_helper.dart';
import 'package:odc/viewmodel/Database/network/dio_helper.dart';
import 'package:odc/viewmodel/Database/network/end_points.dart';

import 'constant.dart';



void main() async{
  await DioHelper.init();
  // print(Token);
  //   runApp(Register());
  runApp(Splash2());

}
