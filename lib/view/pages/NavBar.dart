import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:odc/viewmodel/bloc/Lastscreen/lastscreen_cubit.dart';

import 'Home.dart';
import 'Lastscreen.dart';
import 'News.dart';

class NavBar extends StatefulWidget {

  const NavBar({Key? key}) : super(key: key);
  @override
  State<NavBar> createState() => _NavBarState();
}


class _NavBarState extends State<NavBar> {

  int _selectedpage = 0;

  void navbotbar(int index){
    setState(() {
      _selectedpage = index;
    });
  }
  final List<Widget> page =[
    Home(),
    News(),
    Lastscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home :Scaffold(
      body:
      page[_selectedpage],
      bottomNavigationBar:

      GNav(
        // iconSize: 20,
        // color: Colors.black,
        onTabChange: (index) {
          setState(() {
            _selectedpage = index;
          });
        },
        activeColor: Colors.deepOrange,
        tabBorderRadius: 100,
        tabMargin: EdgeInsets.all(10),
        gap: 10,
        tabs: [
          GButton(
            leading: SvgPicture.asset("assets/home.svg",color: _selectedpage == 0 ? Colors.deepOrange : Colors.black,),
            icon:Icons.home,
            // iconColor: Colors.white,
            text: "Home",
            backgroundColor: Colors.grey.shade200,
          ),
          GButton(
            icon:Icons.newspaper,
            iconColor: _selectedpage == 1 ? Colors.deepOrange : Colors.black,
            text: "News",
            backgroundColor: Colors.grey.shade200,
          ),
          GButton(
            leading: SvgPicture.asset("assets/settings.svg",color: _selectedpage == 2 ? Colors.deepOrange : Colors.black),
            icon:Icons.home,
            // iconColor: Colors.white,
            text: "Settings",
            backgroundColor: Colors.grey.shade200,
          ),

        ],

      ),



    )
    );
  }
}
