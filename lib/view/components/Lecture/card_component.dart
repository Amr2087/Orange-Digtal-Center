// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:odc/view/pages/FAQ.dart';
// import 'package:odc/view/pages/Lecture.dart';
//
// Widget cardCustom (
//     String cardname,
//     String date,
//     String starttime,
//     String endtime,
//     String icon,
//     context,
//
//     ){
//   return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       body:  Row(
//         children: [
//           InkWell(
//             child: Container(
//               width: 160,
//               height: 110,
//               child: Card(
//                 shape: OutlineInputBorder(borderRadius:BorderRadius.circular(10),
//                     borderSide: BorderSide(color: Colors.white)),
//                 elevation: 5,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Center(
//                         child: CircleAvatar(child:
//                         SvgPicture.asset(
//                           icon,color: Colors.deepOrange,
//                         ), backgroundColor: Colors.grey[200],)
//                     ),
//                     // Icon(Icons.sticky_note_2_outlined, color: Colors.deepOrange, size: 50,),
//                     SizedBox(height: 7),
//                     Text(cardname, style: TextStyle(color: Colors.deepOrange, fontSize: 18, fontWeight: FontWeight.bold))
//                   ],
//                 ),
//               ),
//             ),onTap: () {
//
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => Lecture(),
//                 ));
//           },
//           )
//
//         ],
//       ),
//     ),
//   );
// }