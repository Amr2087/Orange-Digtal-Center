import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:odc/view/pages/FAQ.dart';
import 'package:odc/view/pages/Home.dart';
import 'package:odc/view/pages/Notes.dart';
import 'package:odc/view/pages/Notesouter.dart';
import 'package:odc/view/pages/Ourpartners.dart';
import 'package:odc/view/pages/Support_.dart';
import 'package:odc/view/pages/Terms&conditions.dart';

void main() {
  runApp(Lastscreen());
}
class Lastscreen extends StatelessWidget{
  const Lastscreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Center( child: Text("Settings", style: TextStyle(color: Colors.black)),),),
            body: Container(child:
            Column(children: [
              Builder(
                builder: (context) {
                  return InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return FAQ();
                    },));

                  },
                    child: ListTile(title: Text(" FAQ"), trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_rounded),onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return FAQ();
                      },));
                    },),),
                  );
                }
              ),
              Builder(
                builder: (context) {
                  return InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Terms();
                    }));
                  },
                    child: ListTile(title: Text(" Terms & Conditions"), trailing:IconButton(icon: Icon(Icons.arrow_forward_ios_rounded),onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Terms();
                      }));
                    },)),
                  );
                }
              ),
              Builder(
                builder: (context) {
                  return InkWell(onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Ourpartners();
                    }));
                  } ,
                    child: ListTile(title: Text(" Our Partners"), trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_rounded),onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Ourpartners();
                      }));
                    },)),
                  );
                }
              ),
              Builder(
                builder: (context) {
                  return InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Support_();
                    }));
                  },
                    child: ListTile(title: Text(" Support"), trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_rounded),onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Support_();
                      }));
                    },)),
                  );
                }
              ),
              ListTile(title: Text(" Log out"), trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_rounded),onPressed: () {

              },)),

            ],)


            )));
  }
}
