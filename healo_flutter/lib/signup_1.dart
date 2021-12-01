import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healo_flutter/Api/api_services.dart';
import 'package:healo_flutter/Components/otp_verification_dialogues.dart';
import 'package:healo_flutter/utilities/color.dart';
import 'package:healo_flutter/login.dart';
import 'package:http/http.dart' as http;

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  String email = "";
  String phone = "";

  bool isChecked = false;
  bool isVisible = true;
  bool isApiCall = false;

 // late TwilioPhoneVerify _twilioPhoneVerify;


  TextEditingController firstNameController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController myController = new TextEditingController();



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

          // Positioned(
          //   top: 229,
          //   left: 60,
          //   child: Text("Sign Up",
          //     style: TextStyle(
          //         color: MyColor.primaryColor,
          //         fontSize: 16,
          //         fontWeight: FontWeight.w500),),),

          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 240, left: 62),
                  child: Text("Sign Up",
                    style: TextStyle(
                        color: MyColor.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),),
                ),
  /// FirstName
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 29, 60, 2),
                  child: TextFormField(
                    controller: firstNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "All fields are mandatory";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "First Name",
                      hintStyle: TextStyle(fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: MyColor.hintTxtClr),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: MyColor.hintTxtClr,)
                      ),
                    ),
                  ),
                ),
  ///LastName
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 2, 60, 2),
                  child: TextFormField(
                    controller: lastNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "All fields are mandatory";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Last Name",
                      hintStyle: TextStyle(fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: MyColor.hintTxtClr),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: MyColor.hintTxtClr,)
                      ),
                    ),
                  ),
                ),
  ///verifyMobile
  //               Padding(
  //                 padding: const EdgeInsets.fromLTRB(60, 2, 60, 2),
  //                 child: TextFormField(
  //                   controller: phoneController,
  //                   validator: (value) {
  //                     if (value!.isEmpty) {
  //                       return "Verification is mandatory*";
  //                     }
  //                     return null;
  //                   },
  //                   decoration: InputDecoration(
  //                       hintText: "Mobile No.",
  //                       hintStyle: TextStyle(fontSize: 12,
  //                           fontWeight: FontWeight.w500,
  //                           color: MyColor.hintTxtClr),
  //                       enabledBorder: UnderlineInputBorder(
  //                           borderSide: BorderSide(color: MyColor.hintTxtClr,))
  //                   ),
  //                 ),
  //               ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 22, 60, 2),
                  child: Row(
                    children: [
                      Text(
                        'Mobile No.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: MyColor.hintTxtClr,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 3),
                        child: Container(
                          width: 32,
                          height: 22,
                          child: TextField(
                            controller: myController,
                            //keyboardType: TextInputType.phone,
                            decoration: new InputDecoration(
                              hintText: "+91",
                                hintStyle: TextStyle(fontSize: 8,
                                    color: MyColor.eighthClr),
                                border: new OutlineInputBorder(
                                    borderRadius:
                                    new BorderRadius.circular(5.0),
                                    borderSide: new BorderSide(
                                        color: const Color(0xFFD9D3D3)))),
                          ),
                        ),
                      ),
                      Container(
                        width: 102,
                        height: 22,
                        child: TextFormField(
                          controller: phoneController,
                         onChanged: (String value){
                            setState(() {
                              value = phone;
                            });
                            // setState(() {
                            //   phoneController.text = value;
                            // });
                            //  phone = value;
                            },

                         // obscuringCharacter: 'X',
                          style: TextStyle(fontSize: 8),
                          //keyboardType: TextInputType.phone,
                          obscureText: false,
                          decoration: new InputDecoration(
                              fillColor: Colors.white,
                              border: new OutlineInputBorder(
                                  borderRadius:
                                  new BorderRadius.circular(5.0),
                                  borderSide: new BorderSide(
                                      color: Color(0xFFD9D3D3)))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, right: 60, top: 3),
                  child: Divider(thickness: 1,
                  color: MyColor.hintTxtClr,),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 240.0,right: 45),
                  child: Container(
                    height: 20,
                    width: 110,
                    child: ElevatedButton(
                    onPressed: () {
                      phone = phoneController.text;
                      ApiService.sendOtp(phone).then((response) async{
                        setState(() {
                          isApiCall = false;
                        });
                        if(response != null){
                          Navigator.pushAndRemoveUntil(context,
                              MaterialPageRoute(builder: (context)=> VerifyOtpDialogue(
                                otp : response.userId,
                                userId : phone,
                              )),
                                  (route) => false);
                        }
                      });
                    },
                      //    // print(phone);



                      // showDialog(
                      //   context: context,
                      //   builder: (context) {
                      //     return Dialog(
                      //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      //         elevation: 16,
                      //         child: Container(
                      //             height: 314,
                      //             width: 400,
                      //             child: Column(
                      //               mainAxisAlignment: MainAxisAlignment.start,
                      //               crossAxisAlignment: CrossAxisAlignment.center,
                      //               children: [
                      //                 Padding(
                      //                   padding: const EdgeInsets.only(top: 35, bottom: 15),
                      //                   child: Text("OTP Verification",
                      //                     style: TextStyle(color: MyColor.primaryColor,
                      //                         fontWeight: FontWeight.w600,
                      //                         fontSize: 18),),
                      //                 ),
                      //
                      //                 Text("OTP sent on registered Mobile No.",
                      //                   style: TextStyle(
                      //                     fontSize: 13,
                      //                     fontWeight: FontWeight.w500,
                      //                   ),),
                      //                 Padding(
                      //                   padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                      //                   child: Divider(thickness: 1,
                      //                     color: MyColor.hintTxtClr,),
                      //                 ),
                      //                 Padding(
                      //                   padding: const EdgeInsets.fromLTRB(35, 30, 35, 2),
                      //                   child: TextFormField(
                      //                     decoration: InputDecoration(
                      //                       hintText: "Enter OTP",
                      //                       hintStyle: TextStyle(fontSize: 18,
                      //                         fontStyle: FontStyle.italic,
                      //                         fontWeight: FontWeight.w500,),
                      //                       enabledBorder: UnderlineInputBorder(
                      //                           borderSide: BorderSide(color: MyColor.hintTxtClr,)),
                      //                       suffix: Container(
                      //                         child:ElevatedButton(
                      //                           onPressed: (){},
                      //                           child: Text("Re-send",
                      //                             style: TextStyle(
                      //                                 color: MyColor.bgColor,
                      //                                 fontWeight: FontWeight.w500,
                      //                                 fontSize: 18),),
                      //                           style: ElevatedButton.styleFrom(
                      //                               elevation: 20,
                      //                               shadowColor: Colors.black,
                      //                               primary: MyColor.secColor,
                      //                               fixedSize:Size(127, 32),
                      //                               shape:RoundedRectangleBorder(
                      //                                   borderRadius: BorderRadius.circular(15))),
                      //                         ),
                      //                       ),
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 // OtpTimer(
                      //                 //   duration: 60, // time till which the timer should animate
                      //                 //   radius: 10, // size of the circle
                      //                 //   timeTextSize: 12, // time text inside the circle
                      //                 // ),
                      //                 Padding(
                      //                   padding: const EdgeInsets.only(left: 35.0, right: 35, top: 40),
                      //                   child: ElevatedButton(
                      //                     onPressed: (){},
                      //
                      //                     child: Text("Verify OTP",
                      //                       style: TextStyle(
                      //                           color: MyColor.bgColor,
                      //                           fontWeight: FontWeight.w500,
                      //                           fontSize: 18),),
                      //                     style: ElevatedButton.styleFrom(
                      //                         elevation: 20,
                      //                         shadowColor: Colors.black,
                      //                         primary: MyColor.secColor,
                      //                         fixedSize:Size(MediaQuery.of(context).size.width, 32),
                      //                         shape:RoundedRectangleBorder(
                      //                             borderRadius: BorderRadius.circular(15))),
                      //                   ),
                      //                 ),
                      //
                      //               ],
                      //             )
                      //         )
                      //     );
                      //
                      //   },
                      // );

                      style: ElevatedButton.styleFrom(
                        primary: MyColor.bgColor,
                        side: BorderSide(
                          color: Color(0xffd9d3d3),
                        ),
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                    child: Text("Verify Mobile",
                    style: TextStyle(
                    fontSize: 11,
                    color: MyColor.sixthClr,
                    fontWeight: FontWeight.w500
                    ),),
                  ),
                  ),
                ),
  ///verifyEmail
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 2, 60, 2),
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Verification is mandatory*";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: MyColor.hintTxtClr),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: MyColor.hintTxtClr,))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 245.0, right: 45),
                  child: Container(
                    height: 20,
                    width: 110,
                    child: ElevatedButton(
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

                                        Text("OTP sent on registered E-mail",
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
                      style: ElevatedButton.styleFrom(
                          primary: MyColor.bgColor,
                          side: BorderSide(
                            color: Color(0xffd9d3d3),
                          ),
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: Text("Verify Email",
                        style: TextStyle(
                            fontSize: 11,
                            color: MyColor.sixthClr,
                            fontWeight: FontWeight.w500
                        ),),
                    ),
                  ),
                ),
                // Visibility(
                //   visible: isVisible,
                //   child: Padding(
                //     padding: const EdgeInsets.fromLTRB(50, 0, 60, 0),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         TextButton(
                //           onPressed: () {
                //             ApiService.sendOtp(
                //               phone = phoneController.text.toString(),
                //               email = emailController.text.toString(),)
                //             .then((response) async {
                //               setState(() {
                //                 isVisible = false;
                //                 _isVisible = true;
                //               });
                //               if (response.data != null) {
                //                 Navigator.push(context, MaterialPageRoute(
                //                     builder: (context) => Login()));
                //               };
                //
                //
                //   });
                //   },
                //
                //           child: Text("Generate OTP",
                //             style: TextStyle(color: Color(0xff78d6f5),
                //                 fontSize: 12,
                //                 fontStyle: FontStyle.italic,
                //                 fontWeight: FontWeight.w400),),),
                //         TextButton(onPressed: () {},
                //             child: Text("Resend OTP",
                //               style: TextStyle(
                //                   color: MyColor.secColor,
                //                   fontSize: 11,
                //                   fontWeight: FontWeight.w500
                //               ),))
                //       ],
                //     ),
                //   ),
                // ),
                // Visibility(
                //   visible: _isVisible,
                //   child: Padding(
                //     padding: const EdgeInsets.fromLTRB(60, 2, 60, 10),
                //     child: TextFormField(
                //
                //       decoration: InputDecoration(
                //           hintText: "Enter OTP",
                //           hintStyle: TextStyle(fontSize: 12,
                //               fontWeight: FontWeight.w500,
                //               fontStyle: FontStyle.italic,
                //               color: MyColor.hintTxtClr),
                //           enabledBorder: UnderlineInputBorder(
                //               borderSide: BorderSide(color: MyColor
                //                   .hintTxtClr,)),
                //           suffix: TextButton(onPressed: () {},
                //               child: Text("Resend OTP",
                //                 style: TextStyle(
                //                     color: MyColor.secColor,
                //                     fontSize: 11,
                //                     fontWeight: FontWeight.w500
                //                 ),))
                //       ),
                //     ),
                //   ),
                // ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 50.0, top: 20, bottom: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: MyColor.secColor,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: "I Agree with ",
                              style: TextStyle(color: Colors.black),),
                            TextSpan(
                              text: 'privacy',
                              style: TextStyle(color: MyColor.secColor),
                            ),
                            TextSpan(text: ' and ',
                              style: TextStyle(color: Colors.black),),
                            TextSpan(text: "policy",
                              style: TextStyle(color: MyColor.secColor),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 60.0, top: 0, right: 60, bottom: 20),
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Login()));
                        }
                      },
                      child: Text("Sign Up",
                        style: TextStyle(
                            color: MyColor.bgColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),),
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.black,
                          primary: Color(0xffe5e5e5),
                          fixedSize: Size(MediaQuery
                              .of(context)
                              .size
                              .width, 32),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 60.0, top: 0, right: 60, bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Already have an Account?"),
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Login()));
                      },
                          child: Text("Sign-In", style: TextStyle(color: MyColor
                              .secColor,),))
                    ],
                  ),
                )
              ],
            ),
          )
        ]
      )
    );
  }
}
