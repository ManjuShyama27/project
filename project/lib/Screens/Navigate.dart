import 'package:bottom_bar_page_transition/bottom_bar_page_transition.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:project/Screens/Home.dart';
import 'package:project/Screens/More.dart';

class Navigate extends StatefulWidget {
  const Navigate({Key? key}) : super(key: key);

  @override
  _NavigateState createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> with TickerProviderStateMixin {
  static const totalPage = 2;
  int currentIndex = 0;
  var screens = <Widget>[HomePage(), More()];

  void _updateIndex(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  screens.elementAt(currentIndex),
         
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xFF0E74A9),
          selectedLabelStyle: TextStyle(color: const Color(0xFF0E74A9)),
          selectedIconTheme: IconThemeData(color:const Color(0xFF0E74A9)),
          unselectedLabelStyle: TextStyle(color: const Color(0xFF0E74A9), fontSize: 10),
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: _updateIndex,
           
            items: [
              // BottomNavigationBarItem(
              //   label: "Home",
              //   icon: Icon(Icons.home),

              // ),
              BottomNavigationBarItem(
                
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home),
                   SizedBox(width:5),
                    Text('Home'),
                  ],
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.apps),
                   SizedBox(width:5),
                    Text('More'),
                  ],
                ),
              ),
            ]));
  }
}
