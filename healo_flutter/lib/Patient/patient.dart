import 'package:flutter/material.dart';
import 'package:healo_flutter/Appointments/allAppointments.dart';
import 'package:healo_flutter/utilities/color.dart';

class PatientFolder extends StatefulWidget {
  const PatientFolder({Key? key}) : super(key: key);

  @override
  _PatientFolderState createState() => _PatientFolderState();
}

class _PatientFolderState extends State<PatientFolder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 141,
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
                      child: Text("Patient Folder",
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
           Positioned(
             top: 100,
               left:24,
               right: 24,
               child: Container(
                 height: 32,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   color: MyColor.bgColor,
                   borderRadius: BorderRadius.circular(7)
                 ),
                 child: TextField(
                   decoration: InputDecoration(
                     contentPadding: EdgeInsets.only(left: 15, bottom: 15),
                     hintText: "Search Patient name",
                     hintStyle: TextStyle(
                       fontSize: 15,
                       color: Color(0xffd9d3d3)
                     ),


                   ),
                 ),
               )
           ),
          Positioned(
            left: 334,
            top: 104,
            child: Icon(Icons.search,
            color: Color(0xff3750B2),
            size: 20,),
          ),
          Positioned(
            left: 28 ,
            top: 159,
            child: Container(
              child: Text("Total number of entries-12",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: MyColor.hintTxtClr //MyColor.hintTxtClr
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160.0,left: 24, right: 24),
            child: ListView.builder(
              shrinkWrap: false,
              itemCount: 12,
                itemBuilder: (context, index) =>
                    ExpansionTile(
                      title: Text("Aarti Singh",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: MyColor.forthClr
                        ),),
                    children:[
                    Container(
                      height: 179,
                      decoration: BoxDecoration(
                          color: MyColor.bgColor,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                          )
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only( top: 10, left: 41),
                            child: Text("Patient Details",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: MyColor.txtClr
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:18.0, right: 16),
                                  child: Image(image:AssetImage(
                                      'assets/Group 374.png'
                                     )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:0.0, right: 28),
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
                                        padding: const EdgeInsets.only(top:5.0, bottom: 5),
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
                                        padding: const EdgeInsets.only(top:5.0, bottom: 5),
                                        child: Text("Health Id: 123456789",
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
                                            maxLines: 1,
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
                                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                                      child: Container(
                                        width: 90,
                                        height: 25,
                                        child: ElevatedButton(onPressed: (){},
                                          child: Text("Medical Records",
                                            style: TextStyle(
                                            color: MyColor.secColor,
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
                                    ),
                                    Container(
                                      width: 90,
                                      height: 25,
                                      child: ElevatedButton(onPressed: (){},
                                        child: Text("Medical History",
                                          style: TextStyle(
                                          color: MyColor.secColor,
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
                        ],
                      ),

                    ),

                      ],
                ),
            ),
          )

   ]
        ),

    );
  }
}

