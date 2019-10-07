import 'package:flutter/material.dart';
import 'package:one_man_startup/pages.dart';

import 'home_view.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex=0;
  final List<Widget> _children=[
    //HomePage(),
    HomeView(),
    ExplorePage(),
    PastTripsPage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel Budget App"),
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore,),
            title: Text("Explore"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history,),
            title: Text("History"),
          ),
        ],
        onTap: OnTabTapped,
      ),
      body: _children[_currentIndex],

    );
  }

   void OnTabTapped(int index) {
    setState(() {
      _currentIndex=index;
    });
  }
}
