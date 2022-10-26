import 'package:flutter/material.dart';

import 'Notes.dart';

void main() => runApp(const Notes_Outer());

class Notes_Outer extends StatefulWidget {
  const Notes_Outer({super.key});

  @override
  State<Notes_Outer> createState() => _Notes_OuterState();
}

class _Notes_OuterState extends State<Notes_Outer> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed:() {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.deepOrange,) ),
          title:  Text("Notes", style: TextStyle(color: Colors.black, fontSize: 26,letterSpacing: 1),),
        ),
        body: Center(
          child: Container(child:
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("There's No Data To Show", style: TextStyle(fontSize: 20),),
            ],)
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueGrey,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Notes();
            },));

          },
        ),

      ),
    );
  }
}