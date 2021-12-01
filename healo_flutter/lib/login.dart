import 'package:flutter/material.dart';
import 'package:healo_flutter/signup_1.dart';
import 'package:healo_flutter/utilities/color.dart';
//import 'package:flutter_otp_timer/flutter_otp_timer.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            child: Text("Welcome!",
              style: TextStyle(
                  color: MyColor.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),),),
          Positioned(
            top: 222,
            left: 44,
            child: Text("Login",
              style: TextStyle(
                  color: MyColor.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),),),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(45, 250, 45, 10),
                  child: Container(
                    height: 32,
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: MyColor.bgColor,
                        hintText: "Enter registered mobile no.",
                        hintStyle: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: MyColor.hintTxtClr),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffe5e5e5),)
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, top: 150, right: 60, bottom: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child:ElevatedButton(
                      onPressed: (){

                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              elevation: 16,
                              child: Container(
                                height: 314,
                                width: 400,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 35, bottom: 15),
                                        child: Text("OTP Verification",
                                          style: TextStyle(color: MyColor.primaryColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),),
                                      ),

                                      Text("OTP sent on registered Mobile No. / E-mail",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                                        child: Divider(thickness: 1,
                                        color: MyColor.hintTxtClr,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(35, 30, 35, 2),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: "Enter OTP",
                                              hintStyle: TextStyle(fontSize: 18,
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.w500,),
                                              enabledBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(color: MyColor.hintTxtClr,)),
                                            suffix: Container(
                                              child:ElevatedButton(
                                                onPressed: (){},
                                                child: Text("Re-send",
                                                  style: TextStyle(
                                                      color: MyColor.bgColor,
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 18),),
                                                style: ElevatedButton.styleFrom(
                                                    elevation: 20,
                                                    shadowColor: Colors.black,
                                                    primary: MyColor.secColor,
                                                    fixedSize:Size(127, 32),
                                                    shape:RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(15))),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // OtpTimer(
                                      //   duration: 60, // time till which the timer should animate
                                      //   radius: 10, // size of the circle
                                      //   timeTextSize: 12, // time text inside the circle
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35.0, right: 35, top: 40),
                                        child: ElevatedButton(
                                          onPressed: (){},
                                          child: Text("Verify OTP",
                                            style: TextStyle(
                                                color: MyColor.bgColor,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18),),
                                          style: ElevatedButton.styleFrom(
                                              elevation: 20,
                                              shadowColor: Colors.black,
                                              primary: MyColor.secColor,
                                              fixedSize:Size(MediaQuery.of(context).size.width, 32),
                                              shape:RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(15))),
                                        ),
                                      ),

                                    ],
                                  )
                              )
                                );

                          },
                        );
                      },
                      child: Text("Login",
                        style: TextStyle(
                            color: MyColor.bgColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),),
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.black,
                          primary: Color(0xffe5e5e5),
                          fixedSize:Size(MediaQuery.of(context).size.width, 32),
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, top: 10, right: 60, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Don't have an Account?"),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                      },
                          child: Text("Sign-Up", style: TextStyle(color: MyColor.secColor,),))
                    ],
                  ),
                )
              ]
          ),
        ],
      ),
    );
  }
}
