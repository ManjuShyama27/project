import 'package:flutter/material.dart';
import 'package:project/Screens/Navigate.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
      
      children: [
          Container(
            width:330,
            child: TextFormField(
              controller: emailController,
               decoration: new InputDecoration(
                                    hintText: "Email",
                                    hintStyle: TextStyle(fontSize: 16,color: Color(0xFF888888)),)
            ),
          ),
          SizedBox(height:10),
          Container(
            width:330,
            child: TextFormField(
              controller:passwordController,
               decoration: new InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(fontSize: 16,color: Color(0xFF888888)),)
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 54,
            width: 330,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Navigate()));
              },
              child: Text('Log In',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF0E74A9),
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 100),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(36))),
              ),
            ),
          ),
          SizedBox(height:100),
      ],
    ),
        ));
  }
}
