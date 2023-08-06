import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gendroid/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF343541),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'GenDroid',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Image.asset(
              'assets/splash_image.png', // Replace with your own image asset path
              width: 200,
              height: 200,
            ),
            Text(
              "Developed By Kasthu Dhansa Deeps",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18, height: 10, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
