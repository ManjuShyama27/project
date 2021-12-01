import 'package:flutter/material.dart';
import 'package:healo_flutter/Patient/patient.dart';
import 'package:healo_flutter/utilities/color.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 129,
                decoration: BoxDecoration(
                    color: MyColor.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))
                ),
              ),
              Positioned(
                top: 68,
                  left: 38,
                  child: Row(
                children: [
                  Container(
                    height:24,
                    width: 24,
                    child: Icon(Icons.home,
                    color: MyColor.bgColor,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text("Home Screen",
                      style:TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: MyColor.bgColor
                      ) ,),
                  )

                ],
              )),
              Positioned(
                  top: 55,
                  right: 38,
                  child: Container(
                    width: 49,
                    height: 50,
                    child: Image(
                      image: AssetImage('assets/Ellipse 11.png'),
                    ),
                  )),
              Positioned(
                  top: 58,
                  right: 39,
                  child: Container(
                    width: 45,
                    height: 45,
                    child: Image(
                      width: 23,
                      height: 23,
                      image: AssetImage('assets/heart 6.png'),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: MyColor.primaryColor,
                            width: 2
                        ),
                        shape: BoxShape.circle,
                        color: MyColor.bgColor),
                  )),
              // Positioned(
              //   top: 179,
              //   left: 37,
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 179.0, left: 37, right: 38,),
                       child: ElevatedButton(
                        onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> PatientFolder()));
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 24.0, right: 24),
                              child: Container(
                                width: 49,
                                height: 49,
                                child: Image(
                                  image: AssetImage('assets/appointment 1.png'),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                  "Today's Appointment",
                                style: TextStyle(
                                  color: MyColor.thirdClr,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 4,
                            primary: MyColor.bgColor,
                            fixedSize: Size(MediaQuery.of(context).size.width, 97),
                            side: BorderSide(
                              color: MyColor.thirdClr,
                            ),
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                    ),
                     ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 37, right: 38,),
                child: ElevatedButton(
                  onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0, right: 24),
                        child: Container(
                          width: 49,
                          height: 49,
                          child: Image(
                            image: AssetImage('assets/appointment-book 1.png'),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Book Appointment",
                          style: TextStyle(
                              color: MyColor.thirdClr,
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                      primary: MyColor.bgColor,
                      fixedSize: Size(MediaQuery.of(context).size.width, 97),
                      side: BorderSide(
                        color: MyColor.thirdClr,
                      ),
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 37, right: 38,),
                child: ElevatedButton(
                  onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0, right: 24),
                        child: Container(
                          width: 49,
                          height: 49,
                          child: Image(
                            image: AssetImage('assets/patient.png'),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Find a Patient",
                          style: TextStyle(
                              color: MyColor.thirdClr,
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                      primary: MyColor.bgColor,
                      fixedSize: Size(MediaQuery.of(context).size.width, 97),
                      side: BorderSide(
                        color: MyColor.thirdClr,
                      ),
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 51.0, left: 37, right: 38,bottom: 13),
                child: ElevatedButton(
                  onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                  },
                  child: Container(
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0, top: 24 ),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyColor.secColor,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0, bottom: 4),
                              child: Text("List of appointments",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: MyColor.forthClr,
                                fontSize: 16
                              ),),
                            ),
                            Text("10 appointments are booked for today",
                              style: TextStyle(
                                  color: MyColor.forthClr,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: MyColor.bgColor,
                      fixedSize: Size(MediaQuery.of(context).size.width, 85),
                      side: BorderSide(
                        color: MyColor.fifthClr,
                      ),
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only( left: 37, right: 38,bottom: 13),
                child: ElevatedButton(
                  onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                  },
                  child: Container(
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0, top: 24 ),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyColor.secColor,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0, bottom: 4),
                              child: Text("List of appointments",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: MyColor.forthClr,
                                    fontSize: 16
                                ),),
                            ),
                            Text("10 appointments are booked for today",
                              style: TextStyle(
                                color: MyColor.forthClr,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: MyColor.bgColor,
                      fixedSize: Size(MediaQuery.of(context).size.width, 85),
                      side: BorderSide(
                        color: MyColor.fifthClr,
                      ),
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),

            ]
          ),
        ),
      )
            ]
        ),
      bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: Color(0xffe5e5e5),
      items: <Widget>[
        Icon(Icons.home, size: 30, color: Color(0xffe5e5e5) ,),

      ],
      onTap: (index) {
        //Handle button tap
      },
    ),
    );
  }
}
