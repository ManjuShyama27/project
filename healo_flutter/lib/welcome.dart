import 'package:flutter/material.dart';
import 'package:healo_flutter/home.dart';
import 'package:healo_flutter/signup_1.dart';
import 'package:healo_flutter/utilities/color.dart';


class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
              top: 85,
              child: Container(
                width: 98,
                height: 99,
                child: Image(
                  image: AssetImage('assets/Ellipse 11.png'),
                ),
              )),
          Positioned(
            top: 90,
              child: Container(
                width: 90,
                height: 90,
                child: Image(
            image: AssetImage('assets/heart 5.png'),
          ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColor.primaryColor,
                    width: 2
                  ),
                    shape: BoxShape.circle,
                    color: MyColor.bgColor),
              )),
          Positioned(
            top: 185,
            child: Text("Healo",
            style: TextStyle(
                color: MyColor.primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.w500),),),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0, top: 140),
                  child: Text("Welcome!", style: TextStyle(color: MyColor.primaryColor, fontSize: 18, fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                    },
                    child: Text("I am a Doctor",
                      style: TextStyle(
                          color: MyColor.secColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),),
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: MyColor.secColor,
                        ),
                        primary: MyColor.bgColor,
                        fixedSize:Size(280, 35),
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                    },
                    child: Text("I am a Admin",
                      style: TextStyle(
                          color: MyColor.secColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),),
                    style: ElevatedButton.styleFrom(
                        primary: MyColor.bgColor,
                        fixedSize:Size(280, 35),
                        side: BorderSide(
                          color: MyColor.secColor,
                        ),
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                    },
                    child: Text("Patient Sign Up",
                      style: TextStyle(
                          color: MyColor.secColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),),
                    style: ElevatedButton.styleFrom(
                        primary: MyColor.bgColor,
                        fixedSize:Size(280, 35),
                        side: BorderSide(
                          color: MyColor.secColor,
                        ),
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),

              ],
            ),
          ),
         ],
      ),
    );
  }
}
