import 'package:flutter/material.dart';
import 'package:healo_flutter/Appointments/cancel_appointment.dart';
import 'package:healo_flutter/Components/date_time_picker.dart';
import 'package:healo_flutter/Appointments/visit_summary.dart';
import 'package:healo_flutter/MedicalRecords/medical_records.dart';
import 'package:healo_flutter/Patient/patient_card.dart';
import 'package:healo_flutter/utilities/color.dart';
import 'package:healo_flutter/utilities/date_time_picker.dart';

class AppointmentInfo extends StatefulWidget {
  const AppointmentInfo({Key? key}) : super(key: key);

  @override
  _AppointmentInfoState createState() => _AppointmentInfoState();
}

class _AppointmentInfoState extends State<AppointmentInfo> with SingleTickerProviderStateMixin{

  /////Date Function



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

                            Text("In clinic Visit",
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
                                color: MyColor.sixthClr,
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
                                  color: MyColor.sixthClr,
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
                            onPressed: (){
                              showDialog(
                                  context: context,
                                  builder: (context)
                                  {
                                    return DateTimeDialog();
                                  }
                              );
                              // setState(() {
                              //  // _isVisbile = true;
                              // });
                              // showDialog(
                              //     context: context,
                              //     builder: (context) {
                              //       return Padding(
                              //         padding: const EdgeInsets.only(top: 230.0),
                              //         child: Dialog(
                              //             child: Container(
                              //               height: 469,
                              //               width: 416,
                              //               child: Column(
                              //                 children: [
                              //                   Padding(
                              //                     padding: const EdgeInsets.only(top: 94.0),
                              //                     child: Row(
                              //                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //                       children: [
                              //                         IconButton(onPressed: () {
                              //                           _selectDate(context);
                              //                           // Navigator.push(context, MaterialPageRoute(builder: (context)=> BasicDateField()));
                              //                         }, icon: Icon(Icons.add_alarm_sharp,
                              //                         size: 24,)),
                              //
                              //                         IconButton(onPressed: () {},
                              //                            icon: Icon(Icons.calendar_today_outlined,
                              //                            size: 24,)),
                              //
                              //                       ],
                              //                     ),
                              //                   ),
                              //                 ],
                              //               ),
                              //             )
                              //         ),
                              //       );}
                              // );

                              //  Navigator.push(context, MaterialPageRoute(builder: (context)=> DateAndTime()));
                            },
                            child: Text("Reschedule",
                              style: TextStyle(
                                  color: MyColor.thirdClr,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11),),
                            style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  color: MyColor.thirdClr,
                                ),
                                primary: MyColor.bgColor,
                                shape: StadiumBorder())
                               // RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                          ),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 48.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 19.0),
                            child: Container(
                              height: 30,
                              width: 152,
                              child: ElevatedButton(
                                  onPressed: (){
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Dialog(
                                            child: Container(
                                              height: 197,
                                              width: 319,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 36.0, right: 25,  top: 18),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        IconButton(onPressed: (){},
                                                            icon: Icon(
                                                              Icons.arrow_back,
                                                        color: MyColor.forthClr,
                                                        size: 20,)),

                                                        IconButton(onPressed: (){},
                                                            icon: Icon(Icons.clear,
                                                              color: MyColor.forthClr,
                                                              size: 20,))
                                                      ],
                                                    ),
                                                    Container(
                                                      child: Text("Are you sure about cancelling the appointment?",
                                                      style: TextStyle(
                                                        color: Color(0xff686666),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w500
                                                      ),),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 24, right: 30),
                                                          child: Container(
                                                            height: 25,
                                                            width: 100,
                                                            child: ElevatedButton(
                                                                onPressed: (){
                                                                  Navigator.pop(context);
                                                                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                                                                },
                                                                child: Text("No",
                                                                  style: TextStyle(
                                                                      color: MyColor.secColor,
                                                                      fontWeight: FontWeight.w400,
                                                                      fontSize: 14),),
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
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 24.0),
                                                          child: Container(
                                                            height: 25,
                                                            width: 113,
                                                            child: ElevatedButton(
                                                                onPressed: (){
                                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CancelAppointment()));
                                                                },
                                                                child: Text("Yes, Cancel",
                                                                  maxLines: 1,
                                                                  style: TextStyle(
                                                                      color: MyColor.bgColor,
                                                                      fontWeight: FontWeight.w500,
                                                                      fontSize: 14),),
                                                                style: ElevatedButton.styleFrom(
                                                                    primary: MyColor.secColor,
                                                                    shape: StadiumBorder())
                                                              // RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );});
                                  },
                                  child: Text("Cancle Appointment",
                                    style: TextStyle(
                                        color: MyColor.thirdClr,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),),
                                  style: ElevatedButton.styleFrom(
                                      side: BorderSide(
                                        color: MyColor.thirdClr,
                                      ),
                                      primary: MyColor.bgColor,

                                      shape: StadiumBorder())
                                // RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 152,
                            child: ElevatedButton(
                                onPressed: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=> VisitSummary()));
                                },
                                child: Text("Create Visit Summary",
                                  style: TextStyle(
                                      color: MyColor.secColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11),),
                                style: ElevatedButton.styleFrom(
                                    side: BorderSide(
                                      color: MyColor.secColor,
                                    ),
                                    primary: MyColor.bgColor,

                                    shape: StadiumBorder())
                              // RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              )
      ]
    )
    );
  }
  // _selectDateAndTime() async{
  //    (BuildContext context) {
  //      return Container(
  //        width: 416,
  //        height: 469,
  //        decoration: BoxDecoration(
  //            color: MyColor.bgColor
  //        ),
  //        child: Row(
  //          children: [
  //            ElevatedButton(onPressed: () {
  //              _selectDate(context);
  //              // Navigator.push(context, MaterialPageRoute(builder: (context)=> BasicDateField()));
  //            }, child: Text("Date")),
  //
  //            ElevatedButton(onPressed: () {}, child: Text("Time")),
  //
  //          ],
  //        ),
  //      );
  //    };
  // }
}







///Video Consult Appointment
class AppointmentInfoVideo extends StatefulWidget {
  const AppointmentInfoVideo({Key? key}) : super(key: key);

  @override
  _AppointmentInfoVideoState createState() => _AppointmentInfoVideoState();
}

class _AppointmentInfoVideoState extends State<AppointmentInfoVideo> {

  /////Date Function
  DateTime currentDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));

    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
    builder: (BuildContext context, Widget child) {
      return Theme(
        data: ThemeData(
          primarySwatch: Colors.grey,
          splashColor: Colors.black,
          textTheme: TextTheme(
            subtitle1: TextStyle(color: Colors.black),
            button: TextStyle(color: Colors.black),
          ),
          accentColor: Colors.black,
          colorScheme: ColorScheme.dark(
              primary: Color(0xffffbc00),
              primaryVariant: Colors.black,
              secondaryVariant: Colors.black,
              onSecondary: Colors.black,
              onPrimary: Colors.white,
              surface: Colors.black,
              onSurface: Colors.black,
              secondary: Colors.black),
          dialogBackgroundColor: Colors.white,
        ), child: Container(),);};
  }
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
                                color: MyColor.sixthClr,
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
                                  color: MyColor.sixthClr,
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
                              onPressed: (){
                                showDialog(
                                    context: context,
                                    builder: (context)
                                {
                                  return DateTimeDialog();
                                }
                                );
                                //         Padding(
                                //         padding: const EdgeInsets.only(top: 230.0),
                                //         child: Dialog(
                                //             child: Container(
                                //               height: 469,
                                //               width: 416,
                                //               child: Column(
                                //                 children: [
                                //                   Padding(
                                //                     padding: const EdgeInsets.only(top: 94.0),
                                //                     child: Row(
                                //                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                                //                       children: [
                                //                         IconButton(onPressed: () {
                                //                           _selectDate(context);
                                //                           // Navigator.push(context, MaterialPageRoute(builder: (context)=> BasicDateField()));
                                //                         }, icon: Icon(Icons.add_alarm_sharp,
                                //                           size: 24,)),
                                //
                                //                         IconButton(onPressed: () {},
                                //                             icon: Icon(Icons.calendar_today_outlined,
                                //                               size: 24,)),
                                //
                                //                       ],
                                //                     ),
                                //                   ),
                                //                 ],
                                //               ),
                                //             )
                                //         ),
                                //       );}
                                // );

                                //  Navigator.push(context, MaterialPageRoute(builder: (context)=> DateAndTime()));
                              },
                              child: Text("Reschedule",
                                style: TextStyle(
                                    color: MyColor.thirdClr,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11),),
                              style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                    color: MyColor.thirdClr,
                                  ),
                                  primary: MyColor.bgColor,
                                  shape: StadiumBorder())
                            // RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                          ),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 48.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 19.0),
                            child: Container(
                              height: 30,
                              width: 152,
                              child: ElevatedButton(
                                  onPressed: (){
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Dialog(
                                            child: Container(
                                              height: 197,
                                              width: 319,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 36.0, right: 25,  top: 18),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        IconButton(onPressed: (){},
                                                            icon: Icon(
                                                              Icons.arrow_back,
                                                              color: MyColor.forthClr,
                                                              size: 20,)),

                                                        IconButton(onPressed: (){},
                                                            icon: Icon(Icons.clear,
                                                              color: MyColor.forthClr,
                                                              size: 20,))
                                                      ],
                                                    ),
                                                    Container(
                                                      child: Text("Are you sure about cancelling the appointment?",
                                                        style: TextStyle(
                                                            color: Color(0xff686666),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w500
                                                        ),),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 24, right: 30),
                                                          child: Container(
                                                            height: 25,
                                                            width: 100,
                                                            child: ElevatedButton(
                                                                onPressed: (){
                                                                  Navigator.pop(context);
                                                                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                                                                },
                                                                child: Text("No",
                                                                  style: TextStyle(
                                                                      color: MyColor.secColor,
                                                                      fontWeight: FontWeight.w400,
                                                                      fontSize: 14),),
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
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 24.0),
                                                          child: Container(
                                                            height: 25,
                                                            width: 113,
                                                            child: ElevatedButton(
                                                                onPressed: (){
                                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CancelAppointment()));
                                                                },
                                                                child: Text("Yes, Cancel",
                                                                  maxLines: 1,
                                                                  style: TextStyle(
                                                                      color: MyColor.bgColor,
                                                                      fontWeight: FontWeight.w500,
                                                                      fontSize: 14),),
                                                                style: ElevatedButton.styleFrom(
                                                                    primary: MyColor.secColor,
                                                                    shape: StadiumBorder())
                                                              // RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );});
                                  },
                                  child: Text("Cancle Appointment",
                                    style: TextStyle(
                                        color: MyColor.thirdClr,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),),
                                  style: ElevatedButton.styleFrom(
                                      side: BorderSide(
                                        color: MyColor.thirdClr,
                                      ),
                                      primary: MyColor.bgColor,

                                      shape: StadiumBorder())
                                // RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 152,
                            child: ElevatedButton(
                                onPressed: (){
                                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.videocam_outlined,
                                     color: MyColor.bgColor,),
                                    Text("Join Call",
                                      style: TextStyle(
                                          color: MyColor.bgColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13),),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: MyColor.secColor,
                                    shape: StadiumBorder())
                              // RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 36.0),
                      child: Container(
                        height: 30,
                        width: 152,
                        child: ElevatedButton(
                            onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> VisitSummary()));
                            },
                            child: Text("Create Visit Summary",
                              style: TextStyle(
                                  color: MyColor.secColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11),),
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

                  ],
                ),
              )
            ]
        )
    );
  }
// _selectDateAndTime() async{
//    (BuildContext context) {
//      return Container(
//        width: 416,
//        height: 469,
//        decoration: BoxDecoration(
//            color: MyColor.bgColor
//        ),
//        child: Row(
//          children: [
//            ElevatedButton(onPressed: () {
//              _selectDate(context);
//              // Navigator.push(context, MaterialPageRoute(builder: (context)=> BasicDateField()));
//            }, child: Text("Date")),
//
//            ElevatedButton(onPressed: () {}, child: Text("Time")),
//
//          ],
//        ),
//      );
//    };
// }
}

