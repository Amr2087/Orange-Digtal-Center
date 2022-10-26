// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:odc/view/components/core/CoursesCards.dart';
//
// class Lectures extends StatelessWidget {
//   const Lectures({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           elevation: 3,
//           backgroundColor: Colors.white,
//           leading: IconButton(onPressed:() {
//
//           }, icon: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.deepOrange ,) ),
//           title: Text("Lectures", style: TextStyle(color: Colors.black)),
//           actions: [IconButton(onPressed: () {
//
//           }, icon: Icon(Icons.filter_alt,color: Colors.deepOrange,))],
//         ),
//         body: SingleChildScrollView(
//           physics: const BouncingScrollPhysics(),
//           child: Column(
//             children: [
//               Container(
//                 width: 600,
//                 height: 150,
//                 child:
//                 Coursescode(coursename: "Flutter", lec_duration: "2hrs", lec_day: "Wednesday", lec_start: "12:00pm ", lec_end: "2:00pm"),
//               ),
//               Container(
//                 width: 600,
//                 height: 150,
//                 child:
//                 Coursescode(coursename: "React", lec_duration: "2hrs", lec_day: "Thrusday", lec_start: "12:00pm ", lec_end: "2:00pm"),
//               ),
//               Container(
//                 width: 600,
//                 height: 150,
//                 child:
//                 Coursescode(coursename: "Vue", lec_duration: "2hrs", lec_day: "Thrusday", lec_start: "2:00pm ", lec_end: "4:00pm"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:odc/viewmodel/bloc/Lectures/lectures_cubit.dart';
// import '../components/Lectures/card_component.dart';
//
//
// class Lectures extends StatelessWidget {
//   const Lectures({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             body: BlocProvider(
//               create: (context) => LecturesCubit()..getLectures(),
//               child: BlocConsumer<LecturesCubit, LecturesState>(
//                 listener: (context, state) {
//                   // TODO: implement listener
//                 },
//                 builder: (context, state) {
//                   LecturesCubit myCubit = LecturesCubit.get(context);
//                   return myCubit.modelData == null ? const CircularProgressIndicator():SafeArea(
//
//                       child: Center(
//                         child: ListView.builder(
//
//                           shrinkWrap: true,
//                           itemCount: myCubit.modelData!.data!.length,
//                           itemBuilder: (context, index) {
//                             return cardCustom(myCubit.modelData!.data![index].lectureSubject.toString());
//                           },
//                         ),
//                       ));
//                 },
//               ),
//             )));
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc/view/components/core/Coursecard.dart';
import 'package:odc/view/pages/FAQ.dart';

import '../../viewmodel/bloc/Midterms/midterms_cubit.dart';

class Midterms extends StatelessWidget {
  const Midterms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(appBar: AppBar(
          centerTitle: true,
          actions: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.filter_alt,color: Colors.deepOrange,size: 30,),
          )
          ],
          title: Text("Midterms", style: TextStyle(fontSize: 22, color: Colors.black)),
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          },
            icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),
          ),
        ),
            body: BlocProvider(
              create: (context) => MidtermsCubit()..getMidterms(),
              child: BlocConsumer<MidtermsCubit, MidtermsState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  MidtermsCubit myCubit = MidtermsCubit.get(context);
                  return myCubit.modelData == null ? Center(child: CircularProgressIndicator(color: Colors.deepOrange,)):
                  Center(
                    child: SafeArea(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: myCubit.modelData!.data!.length,
                          itemBuilder: (context, index) {
                            return C_card(
                              coursename: myCubit.modelData!.data![index].examSubject.toString(),
                              duration: "2hrs",
                              day: myCubit.modelData!.data![index].examDate.toString(),
                              start: myCubit.modelData!.data![index].examStartTime.toString(),
                              end: myCubit.modelData!.data![index].examEndTime.toString(),
                            );
                          },
                        )),
                  );
                },
              ),
            )));
  }
}



