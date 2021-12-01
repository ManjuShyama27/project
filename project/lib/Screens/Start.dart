// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:project/Screens/Home.dart';

class StartNewPage extends StatefulWidget {
  const StartNewPage({Key? key}) : super(key: key);

  @override
  _StartNewPageState createState() => _StartNewPageState();
}

class _StartNewPageState extends State<StartNewPage> {
  String? _chosenCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
              top: 50.0, left: 10.0, right: 20.0, bottom: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.keyboard_arrow_left,
                          size: 24, color: const Color(0xFF333333)),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Spacer(),
                  Text(
                    'Outlet Code',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: const Color(0xFF333333)),
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 26,
                    width: 81,
                    padding: EdgeInsets.fromLTRB(15.0, 1.0, 5.0, 1.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(
                          color: const Color(0xFFD9D3D3),
                          width: 1,
                        )),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _chosenCode,
                        style: TextStyle(color: Colors.grey),
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconEnabledColor: Color(0xFF686666),
                        items: <String>[
                          'RWSR',
                          'TRSD',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            _chosenCode = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF0E74A9).withOpacity(0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        width: 100,
                        height: 101,
                        child: Icon(Icons.add, color: Colors.white, size: 54)),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF0E74A9).withOpacity(0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        width: 100,
                        height: 101,
                        child: Icon(Icons.add, color: Colors.white, size: 54)),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF0E74A9).withOpacity(0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        width: 100,
                        height: 101,
                        child: Icon(Icons.add, color: Colors.white, size: 54)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF0E74A9).withOpacity(0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        width: 100,
                        height: 101,
                        child: Icon(Icons.add, color: Colors.white, size: 54)),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF0E74A9).withOpacity(0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        width: 100,
                        height: 101,
                        child: Icon(Icons.add, color: Colors.white, size: 54)),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF0E74A9).withOpacity(0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        width: 100,
                        height: 101,
                        child: Icon(Icons.add, color: Colors.white, size: 54)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF0E74A9).withOpacity(0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        width: 100,
                        height: 101,
                        child: Icon(Icons.add, color: Colors.white, size: 54)),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF0E74A9).withOpacity(0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        width: 100,
                        height: 101,
                        child: Icon(Icons.add, color: Colors.white, size: 54)),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF0E74A9).withOpacity(0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        width: 100,
                        height: 101,
                        child: Icon(Icons.add, color: Colors.white, size: 54)),
                  ),
                ],
              ),
              SizedBox(height: 150),
              Center(
                child: Container(
                  height: 54,
                  width: 204,
                  child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0))),
                                  
                                  child: Container(width: 360.0,height: 327,child:Center(
                                    child: Column(

                                      children: [
                                         SizedBox(height:70),
                                        Icon(Icons.check_circle_outline,color:Color(0xFF299629),size:40),
                                        SizedBox(height:20),
                                        Text('Submitted Successfully',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: const Color(0xFF333333)),
                      ),
                      SizedBox(height:30),
                      Container(
              height: 49,
              width: 204,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage()),
                    );
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: const Color(0xFF0E74A9)),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFFFFFF),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(36.0)),
                      side: BorderSide(color: const Color(0xFF0E74A9)),
                    ),
                  )),
            ),
                                      ],
                                    ),
                                  )));
                            });
                      },
                      child: Text(
                        'End Call',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: const Color(0xFF0E74A9)),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFFFFFF),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(36.0)),
                          side: BorderSide(color: const Color(0xFF0E74A9)),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home),
                SizedBox(width: 5),
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
                SizedBox(width: 5),
                Text('More'),
              ],
            ),
          )
        ]));
  }
}
