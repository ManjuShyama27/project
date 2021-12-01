import 'package:flutter/material.dart';
import 'package:healo_flutter/Patient/patient_card.dart';
import 'package:healo_flutter/utilities/color.dart';

class CancelAppointment extends StatefulWidget {
  const CancelAppointment({Key? key}) : super(key: key);

  @override
  _CancelAppointmentState createState() => _CancelAppointmentState();
}

class _CancelAppointmentState extends State<CancelAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 98,
                decoration: BoxDecoration(
                    color: MyColor.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))
                ),
              ),
              Positioned(
                  top: 50,
                  left: 28,
                  child: Row(
                      children: [
                        Container(
                          child: IconButton(
                            icon:Icon(
                              Icons.arrow_back,
                              size: 30,),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            color: MyColor.bgColor,),
                        ),
                        Container(
                          child: Text("Appointment Information",
                            style:TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: MyColor.bgColor
                            ),
                          ),
                        )
                      ]
                  )
              ),
              PatientCard(),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:29.0,top: 292, right: 7 ),
                      child: Image(image:AssetImage(
                          'assets/Group 374.png'
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:298.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(text: TextSpan(
                            text:"Dr. Anup Jha",
                            style: TextStyle(fontSize: 12.0,color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(text:"   (Cardeologist)",
                                style: TextStyle( fontSize: 10.0, color: Color(0xffb9b6b6)),),
                            ],
                          )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text("MBBS, MD-Medicine",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: MyColor.forthClr
                              ),),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 300.0,left: 40 ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("20 Sep '2021",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: MyColor.forthClr
                            ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0, bottom: 2),
                            child: Text("10:00-10:15 AM",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: MyColor.forthClr
                              ),),
                          ),
                          Text("Appointment Cancelled",
                          maxLines: 2,
                          style: TextStyle(
                            color: MyColor.secColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 10
                          ),)
                          // Row(
                          //   children: [
                          //     Icon(Icons.videocam_outlined,
                          //       size: 15,
                          //       color: MyColor.sevClr,),
                          //
                          //     Text("Video Consultant",
                          //       style: TextStyle(
                          //           fontSize: 10,
                          //           color: MyColor.sevClr
                          //       ),),
                          //   ],
                          // )
                        ],
                      ),
                    ),
                  ]
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 22, top: 364),
                child: Divider(thickness: 1,),
              ),

              Padding(
                  padding: const EdgeInsets.only(top: 388.0, left: 30, right: 28),
                  child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Cheif Complaints",
                              style: TextStyle(
                                  color: MyColor.forthClr,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),

                            RichText(text: TextSpan(
                              text:"Visit Type:",
                              style: TextStyle(fontSize: 12.0,
                                  color: MyColor.sixthClr,
                                  fontWeight: FontWeight.w500),
                              children: <TextSpan>[
                                TextSpan(text:"  1st Consulatation",
                                  style: TextStyle( fontSize: 10.0,
                                      color:MyColor.forthClr,
                                      fontWeight: FontWeight.w500),),
                              ],
                            )
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 34.0, bottom: 51),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 4),
                                height: 21,
                                width: 58,
                                decoration: BoxDecoration(
                                    color: MyColor.eighthClr,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Text(
                                  "Fever",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: MyColor.bgColor,

                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Container(
                                  padding: EdgeInsets.only(top: 4),
                                  height: 21,
                                  width: 58,
                                  decoration: BoxDecoration(
                                      color: MyColor.eighthClr,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Text(
                                    "Cough",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: MyColor.bgColor,

                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ]
                  )
              )
            ]
        )
    );
  }
}
