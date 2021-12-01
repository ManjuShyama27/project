

import 'package:flutter/material.dart';
import 'package:healo_flutter/utilities/color.dart';
import 'package:healo_flutter/welcome.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColor.primaryColor,

      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children:[
            Positioned(
              top: 253 ,
              child: Container(
                  height: 184,
                  width: 184,
                  child: Image(image: AssetImage('assets/Ellipse 7.png'),
                    fit: BoxFit.cover,)
              ),
            ),
            Positioned(
              top: 295,
              child: Container(
                  height: 120,
                  width: 120,
                  child: Image(image: AssetImage('assets/heart 2.png'),
                    fit: BoxFit.cover,)
              ),
            ),
            Positioned(
              top: 437,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Healo", style: TextStyle(color: MyColor.bgColor, fontSize: 36, fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, bottom: 40),
                    child: Text("Connected Care",
                      style: TextStyle(
                          color: MyColor.bgColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Welcome()));
                    },
                    child: Text("Let's Get Started",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),),
                    style: ElevatedButton.styleFrom(
                        elevation: 20,
                        shadowColor: Colors.black,
                        primary: MyColor.secColor,
                        fixedSize:Size(200, 45),
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ],
              ),
            ),

      ]  ),
      ),

    );
  }
}
