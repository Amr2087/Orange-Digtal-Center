import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class drops_ extends StatefulWidget {
  const drops_({Key? key}) : super(key: key);

  @override
  State<drops_> createState() => _drops_State();
}

class _drops_State extends State<drops_> {
  List<String> gender= ['Male', 'Female'];
  List<String> uni = ['AUC', 'Cairo', 'ELU', 'GUC', 'Helwan', 'HTI'];
  List<String> grade = ['Grade 1', 'Grade 2', 'Grade 3', 'Grade 4', 'Grade 5'];
  String? firstgen = "Gender";
  String? firstuni = "University";
  String? firstgr = "Grade";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Container(decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
            child: DropdownButton<String>(
                value: firstgen,
                items: gender.map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item, style: TextStyle(fontSize: 20),))) .toList(),
              onChanged: (item) => setState(()=> firstgen = item!),
            )),
     ),
    );
  }
}


