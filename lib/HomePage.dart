import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:fancy_navigation_bar/FoodyCart.dart';
import 'package:fancy_navigation_bar/Home.dart';
import 'package:fancy_navigation_bar/Weather.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage=0;
  final pageState=[Home(),Weather(),FoodyCart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( "Fancy Bottom Naviagtion bar"),
      ),
      body: pageState[currentPage],
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.deepPurpleAccent,
        tabs: [
          TabData(iconData: Icons.home,title: "Home"),
          TabData(iconData: Icons.wb_sunny,title: "Weather"),
          TabData(iconData: Icons.fastfood,title: "Foody Cart"),
          TabData(iconData: Icons.search,title: "search"),
          TabData(iconData: Icons.account_circle,title: "Account")
        ],
        onTabChangedListener: (int position){
          setState(() {
            currentPage=position;
          });
        },
      ),
    );
  }
}
