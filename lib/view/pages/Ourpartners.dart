import 'package:flutter/material.dart';

void main() {
  runApp(Ourpartners());
}

class Ourpartners extends StatelessWidget {
  const Ourpartners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: () {
              Navigator.pop(context);

            },icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.deepOrange,)),
            elevation: 3,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text("Our Partners", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 20, 10, 0),
              child: Column(
                children: [
                  InkWell(onTap: () {

                  },
                    child:  Container(

                      height: 300,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.grey[400],
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("ODC", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),
                               Center(
                                 child: Image(
                                    image: AssetImage('assets/logo.png'),
                                  ),
                               ),


                              // Text("ODC Supports All Universities", style: TextStyle(color: Colors.white, fontSize: 20)),
                            ],
                          ),
                        ),
                      ),
                    ),)
                ],
              ),
            ),
          )
      ),
    );
  }
}

