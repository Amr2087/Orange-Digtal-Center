import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Stitle extends StatelessWidget {
  final String text;
  final Color color1;
  final String text2;
  final Color color3;
  const Stitle({Key? key, required this.text, required this.color1, required this.text2, required this.color3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children:[
    Text("Orange ", style: TextStyle(color: Colors.deepOrange, fontSize: 22, fontWeight: FontWeight.bold)),
        Text("Digital Center", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
    ]
    );
  }
}
