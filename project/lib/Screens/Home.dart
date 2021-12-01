import 'package:flutter/material.dart';
import 'package:project/Screens/Dashboard.dart';
import 'package:project/Screens/Start.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20,bottom:20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Total Visit Today:',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500)),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => Card(
                //  key: ValueKey(_foundPatients[index]["id"]),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                color: Color(0xFF0E74A9),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OutletDashboard()),
                    );
                  },
                  child: Container(
                      width: 360,
                      height: 154,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Outlet Code :',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                                Spacer(),
                                Icon(Icons.arrow_forward,
                                    color: Colors.white, size: 22)
                              ],
                            ),
                           
                            Row(
                              children: [
                                Container(
                                  height: 1,
                                  width: 315,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Total Images:',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                                Spacer(),
                                FlatButton(
                                    onPressed: () {},
                                    child: Text('View Images',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          decoration: TextDecoration.underline,
                                        ))),
                              ],
                            ),
                            Row(
                              children: [
                                Text('In Time:',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                                Spacer(),
                               Text('Out Time:',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              ],
                            )
                          ],
                        ),
                      )),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 54,
              width: 204,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StartNewPage()),
                    );
                  },
                  child: Text(
                    'Start New',
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
    ));
  }
}
