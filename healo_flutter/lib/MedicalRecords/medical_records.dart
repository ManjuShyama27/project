import 'package:flutter/material.dart';
import 'package:healo_flutter/Components/add_medication.dart';
import 'package:healo_flutter/Patient/patient_card.dart';
import 'package:healo_flutter/utilities/color.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_chips_input/flutter_chips_input.dart';


class MedicalRecs extends StatefulWidget {
  const MedicalRecs({Key? key}) : super(key: key);

  @override
  _MedicalRecsState createState() => _MedicalRecsState();
}

class _MedicalRecsState extends State<MedicalRecs> {
  bool _isChecked = false;
  // TabController? _tabController;
  // @override
  // void initState() {
  //   _tabController = new TabController(length: 2, vsync: this);
  //   super.initState();
  // }
  int _value = 1;
  int value = 0;
  int val = -1;
  String _picked = "Tab";
  String _picked1 = "Continue";
  var _frequency;
  var _duration;
  static const mockResults = <AppProfile>[
    AppProfile('Fever'),
    AppProfile('Cold'),
    AppProfile('Cough'),
    AppProfile('HyperTension'),
    AppProfile('Renal(Kidney) disease'),
    AppProfile('Cancer'),
    AppProfile('Diabetes'),
    AppProfile('High Cholesterol'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: Alignment.topCenter, children: [
      Container(
        height: 98,
        decoration: BoxDecoration(
            color: MyColor.primaryColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      Positioned(
          top: 50,
          left: 28,
          child: Row(children: [
            Container(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: MyColor.bgColor,
              ),
            ),
            Container(
              child: Text(
                "Medical Records",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: MyColor.bgColor),
              ),
            )
          ])),
      PatientCard(),

      Padding(
        padding: const EdgeInsets.only(top: 240.0, ),
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(-8),
                child: TabBar(
                indicatorColor: const Color(0xFF3CA1FF),
                unselectedLabelColor: MyColor.eighthClr,
                labelColor: MyColor.sixthClr,
                tabs: [
                  Tab(
                    child: Text("Consent Request",
                    style: TextStyle(
                     // color: MyColor.sixthClr,
                      fontSize: 16
                    ),),
                  ),
                  Tab(
                    child: Text("Visit Summary",
                      style: TextStyle(
                     //     color: MyColor.sixthClr,
                          fontSize: 16
                      ),),
                  ),
                ],
              ),
            ),
            ),
            body: TabBarView(
              children: [
                Center(child: Text("Consent Request")),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 34),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Visit Date:",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: MyColor.sixthClr),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Container(
                                    width: 60,
                                    height: 24,
                                    child: DropdownButton(
                                      iconSize: 0,
                                      value: _value,
                                      isDense: true,
                                      itemHeight: 10,
                                      icon: Icon(MdiIcons.arrowDown),
                                      onChanged: (int? value) {
                                        setState(() {
                                          _value = value!;
                                        });
                                      },
                                      items: [
                                        DropdownMenuItem(
                                          child: Text(
                                            "08/02/21",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: MyColor.forthClr),
                                          ),
                                          value: 1,
                                        ),
                                        DropdownMenuItem(
                                          child: Text(
                                            "20/09/21",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: MyColor.eighthClr),
                                          ),
                                          value: 2,
                                        ),
                                        DropdownMenuItem(
                                          child: Text(
                                            "18/11/20",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: MyColor.eighthClr),
                                          ),
                                          value: 3,
                                        ),
                                        DropdownMenuItem(
                                          child: Text(
                                            "20/09/20",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: MyColor.eighthClr),
                                          ),
                                          value: 4,
                                        ),
                                        DropdownMenuItem(
                                          child: Text(
                                            "15/07/20",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: MyColor.eighthClr),
                                          ),
                                          value: 5,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                                  child: Text(
                                    "Visit Time:",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: MyColor.sixthClr),
                                  ),
                                ),
                                Container(
                                  width: 62,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: '10:00 AM',
                                        hintStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: MyColor.forthClr)),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Visit Type:",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: MyColor.sixthClr),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "1st Consulatation",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: MyColor.txtClr,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 7, bottom: 10, top: 13, right: 20),
                                  child:
                                  Transform.scale(
                                    scale: 0.75,
                                    child:
                                    SizedBox(
                                      height: 15,
                                        width: 15,
                                      child: Checkbox(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5)),
                                        activeColor: MyColor.secColor,
                                        value: _isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _isChecked = value!;
                                          });
                                        },
                                      ),
                                    ),
                                   ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0, right: 15),
                                  child: Text(
                                    "Visit Id:",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: MyColor.sixthClr),
                                  ),
                                ),
                                Container(
                                  width: 62,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: '123456',
                                        hintStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: MyColor.forthClr)),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 108.0, bottom: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Follow Up",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: MyColor.txtClr,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7, ),
                                    child:
                                    Transform.scale(
                                      scale: 0.75,
                                      child:
                                      SizedBox(
                                        height: 15,
                                        width: 15,
                                        child: Checkbox(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5)),
                                          activeColor: MyColor.secColor,
                                          value: _isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              _isChecked = value!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Height:",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: MyColor.forthClr),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 63, right: 34),
                                  child: Text(
                                    "170 Cm",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: MyColor.txtClr),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 43.0),
                                  child: Text(
                                    "Weight:",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: MyColor.forthClr),
                                  ),
                                ),
                                Text(
                                  "60 Kgs",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: MyColor.txtClr),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 24.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Blood Pressure:",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: MyColor.forthClr),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 14, right: 46),
                                    child: Text(
                                      "80/120",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: MyColor.txtClr),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text(
                                      "Temperature:",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: MyColor.forthClr),
                                    ),
                                  ),
                                  Text(
                                    "98.4C",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: MyColor.txtClr),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 24.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Department:",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: MyColor.forthClr),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 14, right: 30),
                                    child: Text(
                                      "Cardeologist",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: MyColor.txtClr),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text(
                                      "Doctor Name:",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: MyColor.forthClr),
                                    ),
                                  ),
                                  Text(
                                    "Dr. Anup Jha",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: MyColor.txtClr),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 23.0, bottom: 20),
                        child: Container(
                          padding: EdgeInsets.only(left: 34, top: 5),
                          width: MediaQuery.of(context).size.width,
                          height: 28,
                          decoration: BoxDecoration(color: Color(0xfff4f4f4)),
                          child: Text(
                            "Cheif Complaints",
                            style: TextStyle(
                                color: MyColor.sixthClr,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 34.0, right: 33),
                        child: Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(15.0, 1.0, 5.0, 1.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                color: const Color(0xFFD9D3D3),
                                width: 1,
                              )),
                          child: ChipsInput(
                            initialValue: [AppProfile('Fever')],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            maxChips: 7,
                            findSuggestions: (String query) {
                              if (query.length != 0) {
                                var lowercaseQuery = query.toLowerCase();
                                return mockResults.where((profile) {
                                  return profile.name
                                      .toLowerCase()
                                      .contains(query.toLowerCase());
                                }).toList(growable: false)
                                  ..sort((a, b) => a.name
                                      .toLowerCase()
                                      .indexOf(lowercaseQuery)
                                      .compareTo(
                                      b.name.toLowerCase().indexOf(lowercaseQuery)));
                              } else {
                                return const <AppProfile>[];
                              }
                            },
                            onChanged: (data) {},
                            chipBuilder: (context, state, profile) {
                              return InputChip(
                                key: ObjectKey(profile),
                                label: Container(
                                  height: 20,
                                  child: Text(profile.toString(),
                                      style: TextStyle(color: Colors.white, fontSize: 12)),
                                ),
                                onDeleted: () => state.deleteChip(profile),
                                deleteIcon: Icon(
                                  Icons.clear,
                                  size: 14,
                                ),
                                deleteIconColor: Colors.white,
                                backgroundColor: const Color(0xFF3CA1FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                ),
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              );
                            },
                            suggestionBuilder: (context, state, profile) {
                              return ListTile(
                                key: ObjectKey(profile),
                                title: Text(profile.toString()),
                                onTap: () => state.selectSuggestion(profile),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 23.0, bottom: 20),
                        child: Container(
                          padding: EdgeInsets.only(left: 34, top: 5),
                          width: MediaQuery.of(context).size.width,
                          height: 28,
                          decoration: BoxDecoration(color: Color(0xfff4f4f4)),
                          child: Text(
                            "Observations",
                            style: TextStyle(
                                color: MyColor.sixthClr,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 34.0, right: 33),
                        child: Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(15.0, 1.0, 5.0, 1.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                color: const Color(0xFFD9D3D3),
                                width: 1,
                              )),
                          child: ChipsInput(
                            initialValue: [AppProfile('Cancer'), AppProfile('Kidney(Renal) Disease')],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            maxChips: 7,
                            findSuggestions: (String query) {
                              if (query.length != 0) {
                                var lowercaseQuery = query.toLowerCase();
                                return mockResults.where((profile) {
                                  return profile.name
                                      .toLowerCase()
                                      .contains(query.toLowerCase());
                                }).toList(growable: false)
                                  ..sort((a, b) => a.name
                                      .toLowerCase()
                                      .indexOf(lowercaseQuery)
                                      .compareTo(
                                      b.name.toLowerCase().indexOf(lowercaseQuery)));
                              } else {
                                return const <AppProfile>[];
                              }
                            },
                            onChanged: (data) {},
                            chipBuilder: (context, state, profile) {
                              return InputChip(
                                key: ObjectKey(profile),
                                label: Container(
                                  height: 20,
                                  child: Text(profile.toString(),
                                      style: TextStyle(color: Colors.white, fontSize: 12)),
                                ),
                                onDeleted: () => state.deleteChip(profile),
                                deleteIcon: Icon(
                                  Icons.clear,
                                  size: 14,
                                ),
                                deleteIconColor: Colors.white,
                                backgroundColor: const Color(0xFF3CA1FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                ),
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              );
                            },
                            suggestionBuilder: (context, state, profile) {
                              return ListTile(
                                key: ObjectKey(profile),
                                title: Text(profile.toString()),
                                onTap: () => state.selectSuggestion(profile),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 23.0, bottom: 20),
                        child: Container(
                          padding: EdgeInsets.only(left: 34, top: 5),
                          width: MediaQuery.of(context).size.width,
                          height: 28,
                          decoration: BoxDecoration(color: Color(0xfff4f4f4)),
                          child: Text(
                            "Diagonosis",
                            style: TextStyle(
                                color: MyColor.sixthClr,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 34.0, right: 33),
                        child: Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(15.0, 1.0, 5.0, 1.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                color: const Color(0xFFD9D3D3),
                                width: 1,
                              )),
                          child: ChipsInput(
                            initialValue: [AppProfile('Diabetes'), AppProfile('High cholesterol')],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            maxChips: 7,
                            findSuggestions: (String query) {
                              if (query.length != 0) {
                                var lowercaseQuery = query.toLowerCase();
                                return mockResults.where((profile) {
                                  return profile.name
                                      .toLowerCase()
                                      .contains(query.toLowerCase());
                                }).toList(growable: false)
                                  ..sort((a, b) => a.name
                                      .toLowerCase()
                                      .indexOf(lowercaseQuery)
                                      .compareTo(
                                      b.name.toLowerCase().indexOf(lowercaseQuery)));
                              } else {
                                return const <AppProfile>[];
                              }
                            },
                            onChanged: (data) {},
                            chipBuilder: (context, state, profile) {
                              return InputChip(
                                key: ObjectKey(profile),
                                label: Container(
                                  height: 20,
                                  child: Text(profile.toString(),
                                      style: TextStyle(color: Colors.white, fontSize: 12)),
                                ),
                                onDeleted: () => state.deleteChip(profile),
                                deleteIcon: Icon(
                                  Icons.clear,
                                  size: 14,
                                ),
                                deleteIconColor: Colors.white,
                                backgroundColor: const Color(0xFF3CA1FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                ),
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              );
                            },
                            suggestionBuilder: (context, state, profile) {
                              return ListTile(
                                key: ObjectKey(profile),
                                title: Text(profile.toString()),
                                onTap: () => state.selectSuggestion(profile),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 23.0,),
                        child: Container(
                          padding: EdgeInsets.only(left: 34, top: 5),
                          width: MediaQuery.of(context).size.width,
                          height: 28,
                          decoration: BoxDecoration(color: Color(0xfff4f4f4)),
                          child: Text(
                            "Medication",
                            style: TextStyle(
                                color: MyColor.sixthClr,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      ///Medication
                      Padding(
                        padding: const EdgeInsets.only(top: 20, ),
                        child: Center(
                          child: Container(
                            height: 30,
                            width: 160,
                            child: ElevatedButton(
                                onPressed: () => showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AddMedication();
                                    }),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.add,
                                      color: MyColor.bgColor,
                                    size: 20,),
                                    Text("Add Medication",
                                      style: TextStyle(
                                          color: MyColor.bgColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: MyColor.secColor,
                                    shape: StadiumBorder())
                              // RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 23.0,),
                        child: Container(
                          padding: EdgeInsets.only(left: 34, top: 5),
                          width: MediaQuery.of(context).size.width,
                          height: 28,
                          decoration: BoxDecoration(color: Color(0xfff4f4f4)),
                          child: Text(
                            "Additional Notes",
                            style: TextStyle(
                                color: MyColor.sixthClr,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 34.0, right: 33),
                        child: Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(15.0, 1.0, 5.0, 1.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                color: const Color(0xFFD9D3D3),
                                width: 1,
                              )),
                          child: ChipsInput(
                            initialValue: [AppProfile('Fever')],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            maxChips: 7,
                            findSuggestions: (String query) {
                              if (query.length != 0) {
                                var lowercaseQuery = query.toLowerCase();
                                return mockResults.where((profile) {
                                  return profile.name
                                      .toLowerCase()
                                      .contains(query.toLowerCase());
                                }).toList(growable: false)
                                  ..sort((a, b) => a.name
                                      .toLowerCase()
                                      .indexOf(lowercaseQuery)
                                      .compareTo(
                                      b.name.toLowerCase().indexOf(lowercaseQuery)));
                              } else {
                                return const <AppProfile>[];
                              }
                            },
                            onChanged: (data) {},
                            chipBuilder: (context, state, profile) {
                              return InputChip(
                                key: ObjectKey(profile),
                                label: Container(
                                  height: 20,
                                  child: Text(profile.toString(),
                                      style: TextStyle(color: Colors.white, fontSize: 12)),
                                ),
                                onDeleted: () => state.deleteChip(profile),
                                deleteIcon: Icon(
                                  Icons.clear,
                                  size: 14,
                                ),
                                deleteIconColor: Colors.white,
                                backgroundColor: const Color(0xFF3CA1FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                ),
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              );
                            },
                            suggestionBuilder: (context, state, profile) {
                              return ListTile(
                                key: ObjectKey(profile),
                                title: Text(profile.toString()),
                                onTap: () => state.selectSuggestion(profile),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 23.0, bottom: 20),
                        child: Container(
                          padding: EdgeInsets.only(left: 34, top: 5),
                          width: MediaQuery.of(context).size.width,
                          height: 28,
                          decoration: BoxDecoration(color: Color(0xfff4f4f4)),
                          child: Text(
                            "Lab Reports",
                            style: TextStyle(
                                color: MyColor.sixthClr,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
///Lab Reports
                      Padding(
                        padding: const EdgeInsets.only(left: 34.0, right: 33),
                        child: Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(15.0, 1.0, 5.0, 1.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                color: const Color(0xFFD9D3D3),
                                width: 1,
                              )),
                          child: ChipsInput(
                            initialValue: [AppProfile('Fever')],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            maxChips: 7,
                            findSuggestions: (String query) {
                              if (query.length != 0) {
                                var lowercaseQuery = query.toLowerCase();
                                return mockResults.where((profile) {
                                  return profile.name
                                      .toLowerCase()
                                      .contains(query.toLowerCase());
                                }).toList(growable: false)
                                  ..sort((a, b) => a.name
                                      .toLowerCase()
                                      .indexOf(lowercaseQuery)
                                      .compareTo(
                                      b.name.toLowerCase().indexOf(lowercaseQuery)));
                              } else {
                                return const <AppProfile>[];
                              }
                            },
                            onChanged: (data) {},
                            chipBuilder: (context, state, profile) {
                              return InputChip(
                                key: ObjectKey(profile),
                                label: Container(
                                  height: 20,
                                  child: Text(profile.toString(),
                                      style: TextStyle(color: Colors.white, fontSize: 12)),
                                ),
                                onDeleted: () => state.deleteChip(profile),
                                deleteIcon: Icon(
                                  Icons.clear,
                                  size: 14,
                                ),
                                deleteIconColor: Colors.white,
                                backgroundColor: const Color(0xFF3CA1FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                ),
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              );
                            },
                            suggestionBuilder: (context, state, profile) {
                              return ListTile(
                                key: ObjectKey(profile),
                                title: Text(profile.toString()),
                                onTap: () => state.selectSuggestion(profile),
                              );
                            },
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 23.0, bottom: 20),
                        child: Container(
                          padding: EdgeInsets.only(left: 34, top: 5),
                          width: MediaQuery.of(context).size.width,
                          height: 28,
                          decoration: BoxDecoration(color: Color(0xfff4f4f4)),
                          child: Text(
                            "Additional Notes",
                            style: TextStyle(
                                color: MyColor.sixthClr,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 34.0, right: 33),
                        child: Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(15.0, 1.0, 5.0, 1.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                color: const Color(0xFFD9D3D3),
                                width: 1,
                              )),
                          child: ChipsInput(
                            initialValue: [AppProfile('Fever')],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            maxChips: 7,
                            findSuggestions: (String query) {
                              if (query.length != 0) {
                                var lowercaseQuery = query.toLowerCase();
                                return mockResults.where((profile) {
                                  return profile.name
                                      .toLowerCase()
                                      .contains(query.toLowerCase());
                                }).toList(growable: false)
                                  ..sort((a, b) => a.name
                                      .toLowerCase()
                                      .indexOf(lowercaseQuery)
                                      .compareTo(
                                      b.name.toLowerCase().indexOf(lowercaseQuery)));
                              } else {
                                return const <AppProfile>[];
                              }
                            },
                            onChanged: (data) {},
                            chipBuilder: (context, state, profile) {
                              return InputChip(
                                key: ObjectKey(profile),
                                label: Container(
                                  height: 20,
                                  child: Text(profile.toString(),
                                      style: TextStyle(color: Colors.white, fontSize: 12)),
                                ),
                                onDeleted: () => state.deleteChip(profile),
                                deleteIcon: Icon(
                                  Icons.clear,
                                  size: 14,
                                ),
                                deleteIconColor: Colors.white,
                                backgroundColor: const Color(0xFF3CA1FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                ),
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              );
                            },
                            suggestionBuilder: (context, state, profile) {
                              return ListTile(
                                key: ObjectKey(profile),
                                title: Text(profile.toString()),
                                onTap: () => state.selectSuggestion(profile),
                              );
                            },
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 100),
                        child: Center(
                          child: Container(
                            height: 36,
                            width: 155,
                            child: ElevatedButton(
                                onPressed: (){
                                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                                },
                                child: Text("Save",
                                  style: TextStyle(
                                      color: MyColor.bgColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),),
                                style: ElevatedButton.styleFrom(
                                    primary: MyColor.secColor,
                                    shape: StadiumBorder())
                              // RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    ]));
  }
}

class AppProfile {
  final String name;

  const AppProfile(this.name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppProfile &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  String toString() {
    return name;
  }
}
