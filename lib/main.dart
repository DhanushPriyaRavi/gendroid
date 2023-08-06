import 'package:flutter/material.dart';
import 'package:gendroid/chat_page.dart';
import 'package:gendroid/news_Page.dart';
import 'package:gendroid/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Combined App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => HomePage(),
        '/chat': (context) => const ChatApp(),
        '/news': (context) => const NewsApp(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      backgroundColor: Color.fromARGB(
          255, 101, 171, 206), // Set the desired background color
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/chat');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 182, 241, 241), // Set the button's background color
              ),
              child: const Text(
                'Go to Chat App',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 16, 15, 58)),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/news');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 182, 241, 241), // Set the button's background color
              ),
              child: const Text(
                'Go to News App',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 16, 15, 58),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
