// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_car_installment_calculator/views/input_screen_iu.dart';

void main() {
  runApp(
    SplashScreenUI(),
  );
}

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    super
        .initState(); //โค๊ช ดีเลย์ หน้าจอไว้ 3 วินาที แล้วเปิดไปหน้าจอ input...
    Future.delayed(
      // ระยะเวลา 3 วินาที
      Duration(seconds: 3),
      //ครบเวลาแล้วทำอะไรต่อ ณ ที่นี่้คือ เปิดไปหน้า input....
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => InputScreenUI(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 51, 219, 56),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/img01.png',
              width: 230.0,
            ),
            Text(
              'Car Installment',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreenAccent,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Calculator',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreenAccent,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            CircularProgressIndicator(
              color: Colors.grey[500],
            ),
            SizedBox(
              height: 80.0,
            ),
            Text(
              'Created by Nattaya DTI-SAU',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.lightGreenAccent,
              ),
            ),
            Text(
              'Version 1.0.0',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.lightGreenAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
