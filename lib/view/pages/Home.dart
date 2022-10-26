import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:odc/view/components/Home/PageCard.dart';
import 'package:odc/view/pages/Calendar.dart';
import 'package:odc/view/pages/Finals.dart';
import 'package:odc/view/pages/Lecture.dart';
import 'package:odc/view/pages/Midterms.dart';
import 'package:odc/view/pages/NavBar.dart';
import 'package:odc/view/pages/Notesouter.dart';
import 'package:odc/view/pages/Sections.dart';
import 'package:odc/viewmodel/bloc/Home/home_cubit.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Notes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create :(context) => HomeCubit(),
        child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
      // TODO: implement listener
    },
    builder: (context, state) {
    HomeCubit myCubit = HomeCubit.get(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // bottomNavigationBar: NavBar(),
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Orange ", style: TextStyle(color: Colors.deepOrange, fontSize: 22, fontWeight: FontWeight.bold)),
                  Text("Digital Center", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    height: 110,
                    child: PageCard(cardname: 'Lectures', '',icon: 'assets/lecture.svg','', widget: Lecture(),
                  ),),

                  Container(
                    width: 160,
                    height: 110,
                    child: PageCard(cardname: 'Sections', '', icon: 'assets/sections.svg','', widget: Sections()),
                  ),
                ],
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    height: 110,
                    child: PageCard(cardname: 'Midterms', '', icon: 'assets/midterm.svg','', widget: Midterms(),),
                  ),
                  Container(
                    width: 160,
                    height: 110,
                    child: PageCard(cardname: 'Finals', '', icon: 'assets/final.svg','',widget: Finals(),),
                  ),
                ],
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    height: 110,
                    child: PageCard(cardname: 'Events', 'assets/event.svg', icon: 'assets/event.svg','', widget: Events(),)
                  ),
                  Container(
                    width: 160,
                    height: 110,
                    child: PageCard(cardname: 'Notes', '', icon: 'assets/notes.svg','', widget: Notes_Outer(),)
                  ),
                ],
              ),
              // BottomNavigationBar(items: )

            ],
          ),
        ),
        // bottomNavigationBar: NavBar(),),
    )
    );
  })
        );

}
}