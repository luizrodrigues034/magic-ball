import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MagicBallApp());
}

class MagicBallApp extends StatefulWidget {
  const MagicBallApp({super.key});

  @override
  State<MagicBallApp> createState() => _MagicBallAppState();
}

class _MagicBallAppState extends State<MagicBallApp> {
  var num_img = Random().nextInt(5) + 1;

  changeAnswer() {
    setState(() {
      num_img = Random().nextInt(5) + 1;
    });
  }
  // This widget is the root of your application.

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
        appBarTheme: AppBarTheme(color: const Color.fromARGB(156, 0, 0, 0)),
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: changeAnswer,
                child: Image.asset('assets/images/ball$num_img.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
