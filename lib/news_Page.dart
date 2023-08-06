// NewsApp.dart
import 'package:flutter/material.dart';
import 'package:gendroid/newsapp/view/home.dart';
import 'package:gendroid/newsapp/view/spalsh.dart';

class NewsApp extends StatefulWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  bool showingSplash = true;

  LoadHome() {
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        showingSplash = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    LoadHome();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gen News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: showingSplash ? const SplashScreen() : const HomeScreen(),
    );
  }
}
