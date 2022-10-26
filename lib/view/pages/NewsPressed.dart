import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewP extends StatelessWidget {
  const NewP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.deepOrange),
          ),
        ),
        body: Column(
          children: [
            Image(image:AssetImage("assets/logo.png")),
            Text("ODCs", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            Text("06-07-2022", style: TextStyle(fontSize: 12, color: Colors.deepOrange),),
            Center(
              child: Text(
                "ODC Supports All UNiversties"
              ),
            )

          ],
        ),
      ),
    );
  }
}
