import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_coba/admin/ui/uis.dart';
import 'package:project_coba/auth/login.dart';
import 'package:project_coba/main.dart';
import 'user/ui/home.dart';
import 'package:project_coba/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Icon(
            //   Icons.timer,
            //   size: 100.0,
            //   color: Colors.white,
            // ),
            Image.asset(
              'assets/logo.png',
              width: 140,
            ),
            SizedBox(height: 24.0),
            Text(
              "Aplikasi Absensi",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(110, 0, 110, 0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.cyanAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
