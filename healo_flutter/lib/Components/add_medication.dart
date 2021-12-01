import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:healo_flutter/utilities/color.dart';
class AddMedication extends StatefulWidget {
  const AddMedication({Key? key}) : super(key: key);

  @override
  _AddMedicationState createState() => _AddMedicationState();
}

class _AddMedicationState extends State<AddMedication> {

  String _picked = "Tab";
  var _frequency;
  var _duration;
  String _singleValue = "Continue";
  String _medicineCategory = "Tab";

  List<String> _status = ["Tab", "Capsules", "Syrup"];
  List<String> _list = ["Continue", "Discontinue"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150.0, bottom: 70),
      child: Container(
        height: 550,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: dialogContent(context),
      ),
    );
  }

  dialogContent(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, top: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back,
                          size: 28, color: const Color(0xFF898785)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.clear,
                          size: 25, color: const Color(0xFF898785)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ]),
            ),

          Padding(
            padding: const EdgeInsets.only(left: 33.0, right: 33),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Medicine Name',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: MyColor.eighthClr),
                  ),
                  RadioGroup<String>.builder(
                    direction: Axis.horizontal,
                    groupValue: _medicineCategory,
                    onChanged: (value) =>
                        setState(() {
                      _medicineCategory = value!;
                    }),
                    items: _status,
                    itemBuilder: (item) => RadioButtonBuilder(
                      item,

                    ),
                    activeColor: Color(0xff62d28b),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                        decoration: InputDecoration(
                            suffixIcon:  Icon(Icons.search, size: 16)))
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 5.0, bottom: 5),
                    child: Text(
                      'Dosage',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: const Color(0xFFB9B6B6)),
                    ),
                  ),
                  Container(
                      height: 34,
                      width: 345.0,
                      padding:
                      EdgeInsets.fromLTRB(5.0, 1.0, 5.0, 1.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: const Color(0xFFD9D3D3),
                            width: 1,
                          )),
                      child: TextField(
                        //controller: dosageController,
                        style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xFF686666),
                            fontWeight: FontWeight.w500),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffixText: _medicineCategory,
                          border: InputBorder.none,
                        ),
                      )),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 5),
                            child: Text(
                              'Frequency',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: const Color(0xFFB9B6B6)),
                            ),
                          ),
                          Container(
                            height: 34,
                            width: 140.0,
                            padding: EdgeInsets.fromLTRB(
                                5.0, 1.0, 5.0, 1.0),
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(5.0),
                                border: Border.all(
                                  color: const Color(0xFFD9D3D3),
                                  width: 1,
                                )),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: _frequency,
                                style: TextStyle(color: Colors.grey),
                                icon: Icon(Icons.keyboard_arrow_down,
                                    size: 18),
                                iconEnabledColor: Color(0xFF686666),
                                items: [
                                  'Once a Day',
                                  'Twice a Day',
                                  'Thrice a Day',
                                  'Four Times a Day',
                                ]
                                    .map((label) =>
                                    DropdownMenuItem(
                                      child: Text(
                                        label.toString(),
                                        style: const TextStyle(
                                            fontSize: 10,
                                            color: Colors.black),
                                      ),
                                      value: label,
                                    ))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _frequency = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 5),
                            child: Text(
                              'Duration',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: const Color(0xFFB9B6B6)),
                            ),
                          ),
                          Container(
                            height: 34,
                            width: 140.0,
                            padding: EdgeInsets.fromLTRB(
                                15.0, 1.0, 5.0, 1.0),
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(5.0),
                                border: Border.all(
                                  color: const Color(0xFFD9D3D3),
                                  width: 1,
                                )),
                            child: Row(
                              children: [
                                Icon(Icons.av_timer,
                                    color: const Color(0xFF898785),
                                    size: 20),
                                DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: _duration,
                                    style:
                                    TextStyle(color: Colors.grey),
                                    icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 18),
                                    iconEnabledColor:
                                    Color(0xFF686666),
                                    items: [
                                      '1 Day',
                                      '2 Days',
                                      '3 Days',
                                      '4 Days',
                                      '5 Days',
                                      '6 Days',
                                      '1 Week',
                                      '2 Weeks',
                                      '3 Weeks'
                                    ]
                                        .map((label) =>
                                        DropdownMenuItem(
                                          child: Text(
                                            label.toString(),
                                            style:
                                            const TextStyle(
                                                fontSize: 10,
                                                color: Colors
                                                    .black),
                                          ),
                                          value: label,
                                        ))
                                        .toList(),
                                    onChanged: (String? value) {
                                      setState(() {
                                        _duration = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 5),
                            child: Text(
                              'Start Date',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: const Color(0xFFB9B6B6)),
                            ),
                          ),
                          Container(
                              height: 34,
                              width: 140.0,
                              padding: EdgeInsets.fromLTRB(
                                  1.0, 1.0, 1.0, 1.0),
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(5.0),
                                  border: Border.all(
                                    color: const Color(0xFFD9D3D3),
                                    width: 1,
                                  )),
                              child: Row(children: [
                                IconButton(
                                  icon: Icon(Icons.date_range,
                                      color: const Color(0xFF898785),
                                      size: 20),
                                  onPressed: () {},
                                ),
                              ])),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 5),
                            child: Text(
                              'End Date',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: const Color(0xFFB9B6B6)),
                            ),
                          ),
                          Container(
                              height: 34,
                              width: 140.0,
                              padding: EdgeInsets.fromLTRB(
                                  1.0, 1.0, 1.0, 1.0),
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(5.0),
                                  border: Border.all(
                                    color: const Color(0xFFD9D3D3),
                                    width: 1,
                                  )),
                              child: Row(children: [
                                IconButton(
                                  icon: Icon(Icons.date_range,
                                      color: const Color(0xFF898785),
                                      size: 20),
                                  onPressed: () {},
                                ),
                              ])),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 10.0, bottom: 5),
                    child: Text(
                      'Notes',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: const Color(0xFFB9B6B6)),
                    ),
                  ),
                  Container(
                      height: 63,
                      width: MediaQuery.of(context).size.width,
                      padding:
                      EdgeInsets.fromLTRB(5.0, 1.0, 5.0, 1.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: const Color(0xFFD9D3D3),
                            width: 1,
                          )),
                      child: TextField(
                        //controller: notesController,
                        style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xFF686666),
                            fontWeight: FontWeight.w500),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      )),
                  // Container(
                  //   width: 347,
                  //   child: RadioButtonGroup(
                  //     orientation:
                  //     GroupedButtonsOrientation.HORIZONTAL,
                  //     labels: <String>["Continue", "Discontinue"],
                  //     activeColor: const Color(0xFF62D28B),
                  //     picked: _picked1,
                  //     labelStyle: TextStyle(
                  //         fontSize: 14,
                  //         color: const Color(0xFF686666)),
                  //     onSelected: (String selected) => setState(() {
                  //       selected = _picked1;
                  //     }),
                  //
                  //     itemBuilder: (Radio rb, Text txt, int i) {
                  //       return Container(
                  //         width: 145,
                  //         child: Row(
                  //           mainAxisAlignment:
                  //           MainAxisAlignment.start,
                  //           children: <Widget>[
                  //             rb,
                  //             txt,
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                  // Row(
                  //   children: [
                  //     Radio(
                  //       value: 1,
                  //       groupValue: val,
                  //       onChanged: (_value) {
                  //         setState(() {
                  //           val = value;
                  //         });
                  //       },
                  //       activeColor: Colors.green,
                  //     ),
                  //
                  //     Radio(
                  //       value: 2,
                  //       groupValue: val,
                  //       onChanged: (_value) {
                  //         setState(() {
                  //           val = value;
                  //         });
                  //       },
                  //       activeColor: Colors.green,
                  //     ),
                  //
                  //     // ListTile(
                  //     //   title: Text("Capsule"),
                  //     //   leading: Radio(
                  //     //     value: 3,
                  //     //     groupValue: val,
                  //     //     onChanged: (_value) {
                  //     //       setState(() {
                  //     //         val = value;
                  //     //       });
                  //     //     },
                  //     //     activeColor: Colors.green,
                  //     //   ),
                  //     // ),
                  //   ],
                  // ),
                  RadioGroup<String>.builder(
                    direction: Axis.horizontal,
                    groupValue: _singleValue,
                    onChanged: (value) =>
                        setState(() {
                          _singleValue = value!;
                        }),
                    items: _list,
                    itemBuilder: (item) => RadioButtonBuilder(
                      item,

                    ),
                    activeColor: Color(0xff62d28b),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: Container(
                        height: 45,
                        width: 163,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Save',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: const Color(0xFFFF8A72)),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFFFFFFF),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15.0)),
                                side: BorderSide(
                                    color: const Color(0xFFFF8A72)),
                              ),
                            )),
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      ),
      ),
    );
  }
}
