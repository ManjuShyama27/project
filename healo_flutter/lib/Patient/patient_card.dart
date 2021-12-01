import 'package:flutter/material.dart';
import 'package:healo_flutter/Appointments/allAppointments.dart';
import 'package:healo_flutter/MedicalRecords/medical_records.dart';
import 'package:healo_flutter/utilities/color.dart';

class PatientCard extends StatelessWidget {
  const PatientCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 98.0),
      child: Container(
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: MyColor.bgColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        height: 155,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left:29.0, right: 18),
              child: Image(image:AssetImage(
                  'assets/Group 374.png'
              )),
            ),
            Padding(
              padding: EdgeInsets.only(top:0.0, right: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(text: TextSpan(
                    text:"Ms. Aarti Singh,",
                    style: TextStyle(fontSize: 14.0,
                        color: MyColor.txtClr,
                        fontWeight: FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(text:"  female"
                          "",
                        style: TextStyle( fontSize: 10.0,
                          color: Color(0xffb9b6b6),
                        ),),
                    ],
                  )
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:5.0, bottom: 5),
                    child: Text("Age- 45 years",
                      style:
                      TextStyle(
                          fontSize: 12,
                          color: MyColor.txtClr
                      ),),
                  ),
                  Text("Mobile No. 123456789",
                    style:
                    TextStyle(
                        fontSize: 12,
                        color: MyColor.txtClr
                    ),),
                  Padding(
                    padding:  EdgeInsets.only(top:5.0, bottom: 5),
                    child: Text("Health Id: 123456789",
                      style:
                      TextStyle(
                          fontSize: 12,
                          color: MyColor.txtClr
                      ),),
                  ),
                  Padding(
                    padding:  EdgeInsets.only( bottom: 5),
                    child: Text("DOB- 12/10/1976",
                      style:
                      TextStyle(
                          fontSize: 12,
                          color: MyColor.txtClr
                      ),),
                  ),
                  Text("Patient Id: 123456789",
                    style:
                    TextStyle(
                        fontSize: 12,
                        color: MyColor.txtClr
                    ),),
                ],
              ),
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 90,
                  height: 25,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Appointments()));
                  },
                    child: Text("All Appointments",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: MyColor.secColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 7,
                      ),),
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: MyColor.secColor,
                        ),
                        primary: MyColor.bgColor,
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 10.0, bottom: 10),
                  child: Container(
                    width: 90,
                    height: 25,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> MedicalRecs()));
                    },
                      child: Text("Medical Records",
                        style: TextStyle(
                          color: MyColor.secColor,
                          fontSize: 7,
                          fontWeight: FontWeight.w400,
                        ),),
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            color: MyColor.secColor,
                          ),
                          primary: MyColor.bgColor,
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),),
                  ),
                ),
                Container(
                  width: 90,
                  height: 25,
                  child: ElevatedButton(onPressed: (){},
                    child: Text("Medical History",
                      style: TextStyle(
                        color: MyColor.secColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 7,
                      ),),
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: MyColor.secColor,
                        ),
                        primary: MyColor.bgColor,
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
