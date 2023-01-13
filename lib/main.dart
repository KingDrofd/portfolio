import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'LandingScreen/TopSection/topSection.dart';
import 'Widgets/frostedGlass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingScreen(),
    );
  }
}

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return landingScreen();
  }

  Scaffold landingScreen() {
    Size size = MediaQuery.of(context).size;
    double contWidth = size.width;
    double contHeight = size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset("images/neon_scifi.png").image,
            fit: BoxFit.fill,
          ),
        ),
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: FrostedGlass(
                width: contWidth,
                height: contHeight,
                child: topSection(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 1,
              child: bottomSection(contHeight, contWidth),
            ),
          ],
        ),
      ),
    );
  }

  Row bottomSection(double height, double width) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: FrostedGlass(
            height: height,
            width: width,
            child: Container(
                //color: Colors.orange,
                ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          flex: 1,
          child: FrostedGlass(
            height: height,
            width: width,
            child: Container(
                // color: Colors.green,
                ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          flex: 1,
          child: FrostedGlass(
            width: width,
            height: height,
            child: Container(
                // color: Colors.amber,
                ),
          ),
        )
      ],
    );
  }
}
