import 'package:flutter/material.dart';

class ExamsCards extends StatelessWidget{
  final String exam_name;
  final String lec_duration;
  final String lec_day;
  final String lec_start;
  final String lec_end;
  const ExamsCards({Key? key, required this.exam_name, required this.lec_duration, required this.lec_day, required this.lec_start, required this.lec_end}) : super(key: key);
  @override
  Widget build(BuildContext context){
    debugShowCheckedModeBanner: false;
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
                  Text(exam_name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Row(children: [Icon(Icons.timer, color: Colors.black54),
                    Text(lec_duration,style : TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black87))],)

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
                        Text(" $lec_day",style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),)
                      ],),
                      Row(children: [
                        Icon(Icons.watch_later_rounded,size: 25,color: Colors.greenAccent),
                        Text(" $lec_start")
                      ],),
                      Row(children: [
                        Icon(Icons.watch_later_rounded,size: 25, color: Colors.redAccent,),
                        Text(" $lec_end")
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
