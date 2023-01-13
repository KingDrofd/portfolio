import 'dart:ui';

import 'package:flutter/material.dart';

import 'LandingScreen/TopSection/topSection.dart';

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
                image: Image.asset("images/GridBackground.png").image,
                fit: BoxFit.cover)),
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: FrostedGlass(
                  height: contHeight,
                  width: contWidth,
                  child: topSection(),
                )),
            Expanded(
              flex: 1,
              child: bottomSection(),
            ),
          ],
        ),
      ),
    );
  }

  Row bottomSection() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: Colors.orange,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: Colors.amber,
            ),
          ),
        )
      ],
    );
  }

  Padding newButton(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class FrostedGlass extends StatelessWidget {
  final double width, height;
  final Widget child;
  const FrostedGlass(
      {super.key,
      required this.width,
      required this.height,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        width: width,
        height: height,
        child: Stack(children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.5, sigmaY: 4.5),
            child: Container(
              width: width,
              height: height,
            ),
          ),
          Opacity(
            opacity: 0.04,
            child: Image.asset(
              "images/whiteNoise.png",
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.25), blurRadius: 30)
                ],
                borderRadius: borderRadius,
                border: Border.all(
                    color: Colors.white.withOpacity(0.2), width: 1.0),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(.5),
                      Colors.white.withOpacity(0.2)
                    ],
                    stops: const [
                      0.0,
                      1.0
                    ])),
          ),
          child,
        ]),
      ),
    );
  }
}

final borderRadius = BorderRadius.circular(20.0);
