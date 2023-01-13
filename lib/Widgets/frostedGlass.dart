import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlass extends StatelessWidget {
  final double width, height;
  final Widget child;

  const FrostedGlass({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        width: width,
        height: height,
        child: Stack(children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 6.5,
              sigmaY: 6.5,
            ),
            child: Container(
              width: width,
              height: height,
              child: child,
            ),
          ),
          Opacity(
            opacity: 0.2,
            child: Image.asset(
              "images/_noise.jpg",
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 30,
                  ),
                ],
                borderRadius: borderRadius,
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                  width: 1.0,
                ),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(.3),
                      Colors.white.withOpacity(0.1),
                    ],
                    stops: const [
                      0.0,
                      1.0
                    ])),
          ),
        ]),
      ),
    );
  }
}

final borderRadius = BorderRadius.circular(0.0);
