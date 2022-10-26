import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc/view/components/core/Button_.dart';
import 'package:odc/view/components/core/Textfield.dart';
import 'package:odc/viewmodel/bloc/Login/login_cubit.dart';
import 'package:odc/viewmodel/bloc/Register/register_cubit.dart';

import 'Register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child:
          BlocProvider(
            create: (context) => LoginCubit(),
            child: BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                LoginCubit myCubit = LoginCubit.get(context);
                // RegisterCubit myCubit1 = RegisterCubit.get(context);
                return Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Orange ", style: TextStyle(color: Colors.deepOrange, fontSize: 25, fontWeight: FontWeight.bold)),
                          Text("Digital Center", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Text("Login", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                            ),
                            Text_Form_Field("E-mail", myCubit.email), // Login
                            SizedBox(height: 20),
                            Text_Form_Field("Password", myCubit.password), // Password
                            SizedBox(height: 20),
                            Text("Forgot Password?", style: TextStyle(color: Colors.deepOrange)),
                            SizedBox(height: 40),

                            Buttons(buttonname: "Login",textcolor: Colors.white, buttoncolor: Colors.deepOrange,bordercolor: Colors.deepOrange), // Login button
                            // ElevatedButton(onPressed: () {
                            //   myCubit.login(context);
                            // }, child: Text("Login")),
                            SizedBox(height: 20),
                            Center(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Container(
                                      height: 1,
                                      width: 130,
                                      color: Colors.grey,
                                    ),
                                    Text("  OR  ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                                    Container(
                                      height: 1,
                                      width: 130,
                                      color: Colors.grey,
                                    ),
                                  ]
                              ),
                            ), // LOGIN OR SIGN UP
                            SizedBox(height: 20),
                            // Buttons(buttonname: "Sign Up", textcolor: Colors.deepOrange, buttoncolor: Colors.white, bordercolor: Colors.deepOrange,),
                            // Signup button
                            ElevatedButton(onPressed: () {
                              Navigator.pushReplacement(context, 
                              MaterialPageRoute(builder: (context) => Register()));
                            },
                              child: Text("SignUp", style: TextStyle(color: Colors.deepOrange, fontSize: 18, fontWeight: FontWeight.w900, letterSpacing: 0,)),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  fixedSize: Size(1300, 50),
                                  backgroundColor: Colors.white,
                                  side: BorderSide(color: Colors.deepOrange)
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        )
    );
  }


  }

