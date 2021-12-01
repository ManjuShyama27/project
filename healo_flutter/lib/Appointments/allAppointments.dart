import 'package:flutter/material.dart';
import 'package:healo_flutter/Appointments/appointment_info.dart';
import 'package:healo_flutter/MedicalRecords/medical_records.dart';
import 'package:healo_flutter/Patient/patient_card.dart';
import 'package:healo_flutter/utilities/color.dart';

class Appointments extends StatefulWidget {
   Appointments({Key? key}) : super(key: key);

  @override
  _AppointmentsState createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  bool visibleIcon = true;
  bool visibleText = false;
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
                          child: Text("Appointments",
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

              Padding(
                padding:  EdgeInsets.only(top: 257 , left:20.0, right: 20),
                child: Container(
                  padding: EdgeInsets.only(left: 20, top: 17),
                  height: 46,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xfff4f4f4),
                  child: Text("All Appointments",
                  style: TextStyle(
                    color: MyColor.sixthClr
                  ),),
                ),
              ),
        Padding(
          padding: const EdgeInsets.only(top: 310.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
              Padding(
          padding:  EdgeInsets.only(left:20.0, right: 20),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> AppointmentInfoVideo()));
            },
            child: Card(
              child: Container(
                height: 67,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                 crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("20 Sep '2021",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: MyColor.sixthClr
                          ),),
                          Text("10:00-10:15 AM",
                            style: TextStyle(
                              fontSize: 9,
                                color: MyColor.sevClr
                            ),),
                          Row(
                            children: [
                              Icon(Icons.videocam_outlined,
                              size: 15,
                              color: MyColor.sevClr,),

                              Text("Video Consultant",
                              style: TextStyle(
                                fontSize: 10,
                                color: MyColor.sevClr
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),
                     Padding(
                       padding:  EdgeInsets.only( top: 5, bottom: 5,  ),
                       child:
                 VerticalDivider(thickness: 1,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dr. Anup Jha",
                          style: TextStyle(
                              fontSize: 10,
                              color: MyColor.sixthClr,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text(
                          "(Cardeologist)",
                          style: TextStyle(
                              fontSize: 10,
                              color: MyColor.sixthClr,
                            fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only( top: 5, bottom: 5, ),
                      child:
                      VerticalDivider(thickness: 1,
                      ),
                    ),
                    Center(
                      child: Visibility(
                        visible: visibleIcon,
                        child: Center(
                          child: IconButton(
                            onPressed: (){
                              setState(() {
                                visibleIcon = false;
                                visibleText = true;
                              });
                            },
                            icon: Icon(Icons.clear,
                              size: 20,),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                        visible: visibleText,
                        child: Center(
                          child: Container(
                            height: 31,
                            width: 78,
                            child: Text(
                              "Appoitnment Cancelled",
                              style: TextStyle(
                                  color: MyColor.secColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12
                              ),),
                          ),
                        ))
                  ],
                )
              )
            ),
          ),
        ),

                Padding(
                  padding:  EdgeInsets.only(left:20.0, right: 20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AppointmentInfoVideo()));
                    },
                    child: Card(
                        child: Container(
                            height: 67,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("14 Mar '2021",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: MyColor.sixthClr
                                        ),),
                                      Text("10:00-10:15 AM",
                                        style: TextStyle(
                                            fontSize: 9,
                                            color: MyColor.sevClr
                                        ),),
                                      Row(
                                        children: [
                                          Icon(Icons.videocam_outlined,
                                            size: 15,
                                            color: MyColor.sevClr,),

                                          Text("Video Consultant",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: MyColor.sevClr
                                            ),),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only( top: 5, bottom: 5,  ),
                                  child:
                                  VerticalDivider(thickness: 1,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Dr. Anup Jha",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: MyColor.sixthClr,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text(
                                      "(Cardeologist)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: MyColor.sixthClr,
                                          fontWeight: FontWeight.w500
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:  EdgeInsets.only( top: 5, bottom: 5, ),
                                  child:
                                  VerticalDivider(thickness: 1,
                                  ),
                                ),
                                Center(
                                  child: Visibility(
                                    visible: visibleIcon,
                                    child: Center(
                                      child: IconButton(
                                        onPressed: (){
                                          setState(() {
                                            visibleIcon = false;
                                            visibleText = true;
                                          });
                                        },
                                        icon: Icon(Icons.clear,
                                          size: 20,),
                                      ),
                                    ),
                                  ),
                                ),
                                Visibility(
                                    visible: visibleText,
                                    child: Center(
                                      child: Container(
                                        height: 31,
                                        width: 78,
                                        child: Text(
                                          "Appoitnment Cancelled",
                                          style: TextStyle(
                                              color: MyColor.secColor,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12
                                          ),),
                                      ),
                                    ))
                              ],
                            )
                        )
                    ),
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.only(left:20.0, right: 20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AppointmentInfo()));
                    },
                    child: Card(
                        child: Container(
                            height: 67,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("28 Jan '2021",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: MyColor.sixthClr
                                        ),),
                                      Text("10:00-10:15 AM",
                                        style: TextStyle(
                                            fontSize: 9,
                                            color: MyColor.sevClr
                                        ),),
                                      Row(

                                        children: [
                                          Icon(Icons.videocam_outlined,
                                            size: 15,
                                            color: MyColor.sixthClr,),

                                          Padding(
                                            padding: const EdgeInsets.only(left: 3.0, right: 17),
                                            child: Text("In clinic visit",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: MyColor.sixthClr
                                              ),),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only( top: 5, bottom: 5,  ),
                                  child:
                                  VerticalDivider(thickness: 1,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Dr. Anup Jha",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: MyColor.sixthClr,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text(
                                      "(Cardeologist)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: MyColor.sixthClr,
                                          fontWeight: FontWeight.w500
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:  EdgeInsets.only( top: 5, bottom: 5, ),
                                  child:
                                  VerticalDivider(thickness: 1,
                                  ),
                                ),
                                Center(
                                  child: Visibility(
                                    visible: visibleIcon,
                                    child: Center(
                                      child: IconButton(
                                        onPressed: (){
                                          setState(() {
                                            visibleIcon = false;
                                            visibleText = true;
                                          });
                                        },
                                        icon: Icon(Icons.clear,
                                          size: 20,),
                                      ),
                                    ),
                                  ),
                                ),
                                Visibility(
                                    visible: visibleText,
                                    child: Center(
                                      child: Container(
                                        height: 31,
                                        width: 78,
                                        child: Text(
                                          "Appoitnment Cancelled",
                                          style: TextStyle(
                                              color: MyColor.secColor,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12
                                          ),),
                                      ),
                                    ))
                              ],
                            )
                        )
                    ),
                  ),
                ),



              // previous appointments

                Padding(
                  padding:  EdgeInsets.only(left:20.0, right: 20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AppointmentInfo()));
                    },
                    child: Card(
                        child: Container(
                            height: 67,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("20 Sep '2021",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: MyColor.forthClr
                                        ),),
                                      Text("10:00-10:15 AM",
                                        style: TextStyle(
                                            fontSize: 9,
                                            color: MyColor.eighthClr
                                        ),),
                                      Row(
                                        children: [
                                          Icon(Icons.videocam_outlined,
                                            size: 15,
                                            color: MyColor.eighthClr,),

                                          Text("Video Consultant",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: MyColor.eighthClr
                                            ),),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only( top: 5, bottom: 5, right: 0 ),
                                  child:
                                  VerticalDivider(thickness: 1,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Dr. Anup Jha",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: MyColor.forthClr,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text(
                                      "(Cardeologist)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: MyColor.forthClr,
                                          fontWeight: FontWeight.w500
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:  EdgeInsets.only( top: 5, bottom: 5,  ),
                                  child:
                                  VerticalDivider(thickness: 1,
                                  ),
                                ),
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.check,
                                    color: MyColor.eighthClr,
                                    size: 20,),
                                )
                              ],
                            )
                        )
                    ),
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.only(left:20.0, right: 20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AppointmentInfo()));
                    },
                    child: Card(
                        child: Container(
                            height: 67,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("20 Sep '2021",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: MyColor.forthClr
                                        ),),
                                      Text("10:00-10:15 AM",
                                        style: TextStyle(
                                            fontSize: 9,
                                            color: MyColor.eighthClr
                                        ),),
                                      Row(
                                        children: [
                                          Icon(Icons.videocam_outlined,
                                            size: 15,
                                            color: MyColor.eighthClr,),

                                          Text("Video Consultant",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: MyColor.eighthClr
                                            ),),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only( top: 5, bottom: 5, right: 0 ),
                                  child:
                                  VerticalDivider(thickness: 1,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Dr. Anup Jha",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: MyColor.forthClr,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text(
                                      "(Cardeologist)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: MyColor.forthClr,
                                          fontWeight: FontWeight.w500
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:  EdgeInsets.only( top: 5, bottom: 5,  ),
                                  child:
                                  VerticalDivider(thickness: 1,
                                  ),
                                ),
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.check,
                                    color: MyColor.eighthClr,
                                    size: 20,),
                                )
                              ],
                            )
                        )
                    ),
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.only(left:20.0, right: 20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AppointmentInfo()));
                    },
                    child: Card(
                        child: Container(
                            height: 67,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("20 Sep '2021",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: MyColor.forthClr
                                        ),),
                                      Text("10:00-10:15 AM",
                                        style: TextStyle(
                                            fontSize: 9,
                                            color: MyColor.eighthClr
                                        ),),
                                      Row(
                                        children: [
                                          Icon(Icons.videocam_outlined,
                                            size: 15,
                                            color: MyColor.eighthClr,),

                                          Text("Video Consultant",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: MyColor.eighthClr
                                            ),),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only( top: 5, bottom: 5, right: 0 ),
                                  child:
                                  VerticalDivider(thickness: 1,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Dr. Anup Jha",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: MyColor.forthClr,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text(
                                      "(Cardeologist)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: MyColor.forthClr,
                                          fontWeight: FontWeight.w500
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:  EdgeInsets.only( top: 5, bottom: 5,  ),
                                  child:
                                  VerticalDivider(thickness: 1,
                                  ),
                                ),
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.check,
                                    color: MyColor.eighthClr,
                                    size: 20,),
                                )
                              ],
                            )
                        )
                    ),
                  ),
                ),





              ],
            ),
          )
        )
            ]
        )
    );
  }
}
// Expanded(
//   flex: 3,
//   child: Padding(
//     padding:  EdgeInsets.only(top: 0.0), //280
//     child: ListView.builder(
//       physics: ClampingScrollPhysics(),
//       scrollDirection: Axis.vertical,
//         shrinkWrap: false,
//         itemCount: 6,
//         itemBuilder: (context, index) => Padding(
//           padding:  EdgeInsets.only(left:20.0, right: 20),
//           child: GestureDetector(
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> AppointmentInfo()));
//             },
//             child: Card(
//               child: Container(
//                 height: 67,
//                 child: Row(
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding:  EdgeInsets.only(left: 20.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Text("20 Sep '2021",
//                           style: TextStyle(
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                             color: MyColor.sixthClr
//                           ),),
//                           Text("10:00-10:15 AM",
//                             style: TextStyle(
//                               fontSize: 9,
//                                 color: MyColor.sevClr
//                             ),),
//                           Row(
//                             children: [
//                               Icon(Icons.videocam_outlined,
//                               size: 10,
//                               color: MyColor.sevClr,),
//
//                               Text("Video Consultant",
//                               style: TextStyle(
//                                 fontSize: 10,
//                                 color: MyColor.sevClr
//                               ),),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding:  EdgeInsets.only(left: 10.0, top: 5, bottom: 5, right: 20 ),
//                       child: VerticalDivider(thickness: 1,
//                       ),
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "Dr. Anup Jha",
//                           style: TextStyle(
//                               fontSize: 10,
//                               color: MyColor.sixthClr,
//                             fontWeight: FontWeight.w500
//                           ),
//                         ),
//                         Text(
//                           "(Cardeologist)",
//                           style: TextStyle(
//                               fontSize: 10,
//                               color: MyColor.sixthClr,
//                             fontWeight: FontWeight.w500
//                           ),
//                         )
//                       ],
//                     ),
//                     Padding(
//                       padding:  EdgeInsets.only(left: 20.0, top: 5, bottom: 5, right: 30 ),
//                       child: VerticalDivider(thickness: 1,
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: (){},
//                       icon: Icon(Icons.clear,
//                       size: 20,),
//                     )
//                   ],
//                 )
//               )
//             ),
//           ),
//         )
//     ),
//   ),
// ),
//       Expanded(
//         flex: 2,
//         child: Padding(
//           padding:  EdgeInsets.only(top:0.0), //510
//           child: ListView.builder(
//               physics: ClampingScrollPhysics(),
//               shrinkWrap: false,
//               itemCount: 6,
//               itemBuilder: (context, index) => Padding(
//                 padding:  EdgeInsets.only(left:20.0, right: 20),
//                 child: GestureDetector(
//                   onTap: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=> AppointmentInfo()));
//                   },
//                   child: Card(
//                       child: Container(
//                           height: 67,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Padding(
//                                 padding:  EdgeInsets.only(left: 20.0),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Text("20 Sep '2021",
//                                       style: TextStyle(
//                                           fontSize: 12,
//                                           fontWeight: FontWeight.bold,
//                                           color: MyColor.forthClr
//                                       ),),
//                                     Text("10:00-10:15 AM",
//                                       style: TextStyle(
//                                           fontSize: 9,
//                                           color: MyColor.eighthClr
//                                       ),),
//                                     Row(
//                                       children: [
//                                         Icon(Icons.videocam_outlined,
//                                           size: 10,
//                                           color: MyColor.eighthClr,),
//
//                                         Text("Video Consultant",
//                                           style: TextStyle(
//                                               fontSize: 10,
//                                               color: MyColor.eighthClr
//                                           ),),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Padding(
//                                 padding:  EdgeInsets.only(left: 10.0, top: 5, bottom: 5, right: 20 ),
//                                 child: VerticalDivider(thickness: 1,
//                                 ),
//                               ),
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     "Dr. Anup Jha",
//                                     style: TextStyle(
//                                         fontSize: 10,
//                                         color: MyColor.forthClr,
//                                         fontWeight: FontWeight.w500
//                                     ),
//                                   ),
//                                   Text(
//                                     "(Cardeologist)",
//                                     style: TextStyle(
//                                         fontSize: 10,
//                                         color: MyColor.forthClr,
//                                         fontWeight: FontWeight.w500
//                                     ),
//                                   )
//                                 ],
//                               ),
//                               Padding(
//                                 padding:  EdgeInsets.only(left: 20.0, top: 5, bottom: 5, right: 30 ),
//                                 child: VerticalDivider(thickness: 1,
//                                 ),
//                               ),
//                               IconButton(
//                                 onPressed: (){},
//                                 icon: Icon(Icons.clear,
//                                   size: 20,),
//                               )
//                             ],
//                           )
//                       )
//                   ),
//                 ),
//               )
//           ),
//         ),
//       )
