import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class C_card extends StatelessWidget {
  const C_card({Key? key, required this.coursename, required this.duration, required this.day, required this.start, required this.end}) : super(key: key);
  // String cardname,
  //     String date,
  // String starttime,
  //     String endtime,
  // String icon,
  //     context,
  final String coursename;
  final String duration;
  final String day;
  final String start;
  final String end;

  @override
  Widget build(BuildContext context) {
    return Container(width: 600,
        height: 150,
        child:
        Padding(
          padding: const EdgeInsets.all(14),
          child: Card(elevation: 3,child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
                  Text(coursename, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Row(children: [Icon(Icons.timer, color: Colors.black54),
                    Text(duration,style : TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black87))],)

                ],), // 1st row
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [Text("Lecture Day", style: TextStyle(color: Colors.grey),),
                    Text("Start Time", style: TextStyle(color: Colors.grey)),
                    Text("End Time    ", style: TextStyle(color: Colors.grey)),

                  ],), //2nd row
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,),
                  child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Row(children: [
                        Icon(Icons.calendar_month,size: 25,),
                        Text(" $day",style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),)
                      ],),
                      Row(children: [
                        Icon(Icons.watch_later_rounded,size: 25,color: Colors.greenAccent),
                        Text(" $start")
                      ],),
                      Row(children: [
                        Icon(Icons.watch_later_rounded,size: 25, color: Colors.redAccent,),
                        Text(" $end")
                      ],)
                    ],),
                )
              ],
            ),
          ),shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )),
        )

    );

  }
}
