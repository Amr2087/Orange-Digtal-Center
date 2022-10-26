import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:odc/viewmodel/bloc/Register/register_cubit.dart';

// import '../../../viewmodel/bloc/Login/_cubit.dart';
import '../../../viewmodel/bloc/Login/login_cubit.dart';

class Buttons extends StatelessWidget {
  final String buttonname;
  final Color textcolor;
  final Color bordercolor;
  final Color buttoncolor;
  // final Cubit myc;

  const Buttons({Key? key, required this.buttonname, required this.textcolor, required this.buttoncolor, required this.bordercolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginCubit myCubit = LoginCubit.get(context);
    // RegisterCubit myCubit1 = RegisterCubit.get(context);
    return Center(
      child: ButtonTheme(
        minWidth:200,
        height: 200,
        child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                fixedSize: Size(1300, 50),
                backgroundColor: buttoncolor,
                side: BorderSide(color: bordercolor)
              ),
              onPressed: () {myCubit.login(context);},
              child: Text(buttonname, style: TextStyle(color: textcolor, fontSize: 18, fontWeight: FontWeight.w900, letterSpacing: 0,)),
            ),

          ],
        ),
      ),
    );
  }
}
