import 'package:flutter/material.dart';
import 'package:healo_flutter/utilities/color.dart';

class VerifyOtpDialogue extends StatefulWidget {
  const VerifyOtpDialogue({Key? key, String? otp, String? userId}) : super(key: key);

  @override
  _VerifyOtpDialogueState createState() => _VerifyOtpDialogueState();
}

class _VerifyOtpDialogueState extends State<VerifyOtpDialogue> {


  @override
  Widget build(BuildContext context) {
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

                Text("OTP sent on registered Mobile No.",
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
  }
}

