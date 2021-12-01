import 'package:flutter/material.dart';
import 'package:healo_flutter/Patient/patient_card.dart';
import 'package:healo_flutter/utilities/color.dart';

class VisitSummary extends StatefulWidget {
  const VisitSummary({Key? key}) : super(key: key);

  @override
  _VisitSummaryState createState() => _VisitSummaryState();
}

class _VisitSummaryState extends State<VisitSummary> {
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
                      padding: const EdgeInsets.only(top: 300.0,left: 90 ),
                      child: Column(
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
                          Row(
                            children: [
                              Icon(Icons.videocam_outlined,
                                size: 15,
                                color: MyColor.sevClr,),

                              Text("Video Consult",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: MyColor.forthClr
                                ),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]
              ),
              Padding(
                padding: const EdgeInsets.only(left: 33.0, right: 32, top: 364),
                child: Divider(thickness: 1,),
              ),

              Padding(
                  padding: const EdgeInsets.only(top: 388.0, left: 30, right: 28),
                  child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Consultation Slot:",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: MyColor.forthClr
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("20 Sep '21",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff686666)
                                    ),),
                                  Text("10:00 - 10:15 AM",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: MyColor.forthClr
                                    ),),
                                ],
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 95,
                              child: ElevatedButton(
                                  onPressed: (){},
                                  child: Text("Reschedule",
                                    style: TextStyle(
                                        color: MyColor.eighthClr,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),),
                                  style: ElevatedButton.styleFrom(
                                      side: BorderSide(
                                        color: MyColor.eighthClr,
                                      ),
                                      primary: MyColor.bgColor,
                                      shape: StadiumBorder())
                                // RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                              ),
                            ),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Container(
                            height: 30,
                            width: 152,
                            child: ElevatedButton(
                                onPressed: (){
                                 // Navigator.push(context, MaterialPageRoute(builder: (context)=> VisitSummary()));
                                },
                                child: Text("Visit Summary",
                                  style: TextStyle(
                                      color: MyColor.secColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),),
                                style: ElevatedButton.styleFrom(
                                    side: BorderSide(
                                      color: MyColor.secColor,
                                    ),
                                    primary: MyColor.bgColor,

                                    shape: StadiumBorder())
                              // RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                            ),
                          ),
                        ),
                      ])
              )
            ])
    );

  }
}
