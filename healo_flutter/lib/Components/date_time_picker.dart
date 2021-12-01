import 'package:flutter/material.dart';
import 'package:healo_flutter/utilities/color.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:some_calendar/some_calendar.dart';
import 'package:jiffy/jiffy.dart';


class DateTimeDialog extends StatefulWidget {
  const DateTimeDialog({Key? key}) : super(key: key);

  @override
  _DateTimeDialogState createState() => _DateTimeDialogState();
}

class _DateTimeDialogState extends State<DateTimeDialog> {
  DateTime selectedDate = DateTime.now();
  @override
  void initState() {
    initializeDateFormatting();
    Intl.systemLocale = 'en_En'; // to change the calendar format based on localization
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150, bottom: 80),
      child: Container(
        height: 469,
        width: MediaQuery.of(context).size.width,

        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
        // ),
        //elevation: 0.0,
        child: dialogContent(context),
      ),
    );
  }

  dialogContent(BuildContext context) {
    return Container(
      child: DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                title: Text("${selectedDate}", style: TextStyle(color: MyColor.sixthClr,
                fontSize: 14),),
                backgroundColor: Colors.white,
                bottom: TabBar(
                  indicatorColor: const Color(0xFF3CA1FF),
                  tabs: [
                    Tab(
                      icon: Icon(Icons.alarm,color: const Color(0xFF3CA1FF),size:23),
                    ),
                    Tab(
                      icon: Icon(Icons.date_range,color: const Color(0xFF3CA1FF),size:23),
                    ),

                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Center(
                    child: Icon(Icons.alarm),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10,left: 45,right: 45),
                        height: 280,
                        child: SomeCalendar(
                          mode: SomeMode.Single,
                          isWithoutDialog: true,
                          //selectedDate: selectedDate,
                          //  textColor: MyColor.sixthClr,
                          primaryColor: MyColor.secColor,
                          labels: new Labels(
                            dialogDone: 'Save',

                            // dialogRangeFirstDate: 'Tanggal Pertama',
                            // dialogRangeLastDate: 'Tanggal Terakhir',
                            ),

                          startDate: Jiffy().subtract(years: 3),
                          lastDate: Jiffy().add(months: 9),
                          done: (date) {
                            setState(() {
                              selectedDate = date;
                              //  showSnackbar(selectedDate.toString());
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          height: 25,
                          width: 100,
                          child: ElevatedButton(
                              onPressed: (){
                                //  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                              },
                              child: Text("Save",
                                style: TextStyle(
                                    color: MyColor.bgColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),),
                              style: ElevatedButton.styleFrom(
                                  primary: MyColor.secColor,
                                  shape: StadiumBorder())
                            // RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                          ),
                        ),
                      ),
                    ],
                  ),
                    ],
                  ),

              )
      )

    );
  }
}

// class DatePicker extends StatefulWidget {
//   const DatePicker({Key? key}) : super(key: key);
//
//   @override
//   _DatePickerState createState() => _DatePickerState();
// }
//
// class _DatePickerState extends State<DatePicker> {
//   DateTime currentDate = DateTime.now();
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? pickedDate = await showDatePicker(
//         context: context,
//         initialDate: currentDate,
//         firstDate: DateTime(2015),
//         lastDate: DateTime(2050));
//
//     if (pickedDate != null && pickedDate != currentDate)
//       setState(() {
//         currentDate = pickedDate;
//       });
//     builder: (BuildContext context, Widget child) {
//       return Theme(
//         data: ThemeData(
//           primarySwatch: Colors.grey,
//           splashColor: Colors.black,
//           textTheme: TextTheme(
//             subtitle1: TextStyle(color: Colors.black),
//             button: TextStyle(color: Colors.black),
//           ),
//           accentColor: Colors.black,
//           colorScheme: ColorScheme.dark(
//               primary: Color(0xffffbc00),
//               primaryVariant: Colors.black,
//               secondaryVariant: Colors.black,
//               onSecondary: Colors.black,
//               onPrimary: Colors.white,
//               surface: Colors.black,
//               onSurface: Colors.black,
//               secondary: Colors.black),
//           dialogBackgroundColor: Colors.white,
//         ), child: Container(),);};
//     //  Container(
//     //   height: 336,
//     //   width: MediaQuery.of(context).size.width,
//     //
//     // );};
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       // child:
//       // Container(
//       //   height: 10,
//       //     width: 50,
//       //   child: ElevatedButton(
//       //     onPressed: (){
//       //       setState(() {
//       //         _selectDate(context);
//       //       });
//       //     },
//       //     child: Container(),
//       //   )
//       // ),
//     );
//   }
// }
