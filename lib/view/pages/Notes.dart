import 'package:flutter/material.dart';

class Notes extends StatelessWidget{
  const Notes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading:  IconButton(icon : Icon(Icons.arrow_back_ios_new_sharp), color: Colors.black,onPressed: () {
            Navigator.pop(context);
          },),
          title: Text("Add Note", style: TextStyle(color: Colors.black, fontSize: 26),),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: new InputDecoration(
                        labelText: "Enter Email",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(3) ,bottomRight:Radius.circular(20) ,topLeft:Radius.circular(20) , topRight:Radius.circular(3) ),
                          borderSide: BorderSide(
                            color: Colors.teal,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(3) ,bottomRight:Radius.circular(20) ,topLeft:Radius.circular(20) , topRight:Radius.circular(3) ),
                          borderSide: BorderSide(
                            color: Colors.teal,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextFormField(
                      maxLines: 1,
                      decoration:
                      InputDecoration(
                        labelText: "Date",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(3) ,bottomRight:Radius.circular(20) ,topLeft:Radius.circular(20) , topRight:Radius.circular(3) ),
                          borderSide: BorderSide(
                            color: Colors.teal,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(3) ,bottomRight:Radius.circular(20) ,topLeft:Radius.circular(20) , topRight:Radius.circular(3) ),
                          borderSide: BorderSide(
                            color: Colors.teal,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextFormField(
                      maxLines: 10,
                      decoration:
                      InputDecoration(
                        hintText:"Note",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(3) ,bottomRight:Radius.circular(20) ,topLeft:Radius.circular(20) , topRight:Radius.circular(3) ),
                          borderSide: BorderSide(
                            color: Colors.teal,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(3) ,bottomRight:Radius.circular(20) ,topLeft:Radius.circular(20) , topRight:Radius.circular(3) ),
                          borderSide: BorderSide(
                            color: Colors.teal,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(style: ElevatedButton.styleFrom(
                          minimumSize: Size(90, 40),
                          backgroundColor: Color.fromARGB(255,178 ,194 ,207 )

                      ),
                        onPressed: () {

                        },

                        child: Row(
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            Icon(Icons.add, color: Colors.black),
                            Text("Add", style: TextStyle(color: Colors.black),)
                          ],
                        ) ,
                      )
                  ),
                )
              ],
            ),
          ),
        )

      ),
    );
  }
}