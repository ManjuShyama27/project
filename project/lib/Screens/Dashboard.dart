import 'package:flutter/material.dart';

class OutletDashboard extends StatefulWidget {
  const OutletDashboard({ Key? key }) : super(key: key);

  @override
  _OutletDashboardState createState() => _OutletDashboardState();
}

class _OutletDashboardState extends State<OutletDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top:50.0,left:20.0,right:20.0,bottom:20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('Outlet Dashboard',style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: const Color(0xFF333333)),),
                Spacer(),
                IconButton(icon:Icon(Icons.clear,size:24, color: const Color(0xFF333333)),onPressed: (){
                  Navigator.pop(context);
                }),
              ],
            ),
            SizedBox(height:10),

          ],
        ),
      ),
    );

  }
}