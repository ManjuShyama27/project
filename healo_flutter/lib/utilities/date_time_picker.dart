// import 'package:flutter/material.dart';
// import 'package:healo_hiu/utilities/color.dart';
//
//
// class DateAndTime extends StatefulWidget {
//   const DateAndTime({Key? key}) : super(key: key);
//
//   @override
//   _DateAndTimeState createState() => _DateAndTimeState();
// }
//
// class _DateAndTimeState extends State<DateAndTime> {
//
//   DateTime currentDate = DateTime.now();
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? pickedDate = await showDatePicker(
//         context: context,
//         initialDate: currentDate,
//         firstDate: DateTime(2015),
//         lastDate: DateTime(2050));
//     if (pickedDate != null && pickedDate != currentDate)
//       setState(() {
//         currentDate = pickedDate;
//       });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 416,
//         height: 469,
//       decoration: BoxDecoration(
//         color: MyColor.bgColor
//       ),
//       child: Row(
//         children: [
//           ElevatedButton(onPressed: (){
//             _selectDate(context);
//            // Navigator.push(context, MaterialPageRoute(builder: (context)=> BasicDateField()));
//           }, child: Text("Date")),
//
//           ElevatedButton(onPressed: (){}, child: Text("Time")),
//
//         ],
//       ),
//     );
//   }
// }
// _selectDateAndTime() {
//   Widget build(BuildContext context) {
//     return Container(
//       width: 416,
//       height: 469,
//       decoration: BoxDecoration(
//           color: MyColor.bgColor
//       ),
//       child: Row(
//         children: [
//           ElevatedButton(onPressed: () {
//             _selectDate(context);
//             // Navigator.push(context, MaterialPageRoute(builder: (context)=> BasicDateField()));
//           }, child: Text("Date")),
//
//           ElevatedButton(onPressed: () {}, child: Text("Time")),
//
//         ],
//       ),
//     );
//   }
// }
