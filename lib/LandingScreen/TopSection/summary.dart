import 'dart:ui';

import 'package:flutter/material.dart';

Column infoSection() {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: nameSection(),
            ),
            Expanded(
              flex: 2,
              child: dateSection(),
            ),
          ],
        ),
      ),
      Expanded(flex: 3, child: bioSection())
    ],
  );
}

Container dateSection() {
  return Container(
      // color: Colors.green,
      child: const Center(
    child: Text(
      "13/1/2023",
      style: TextStyle(
        fontSize: 35,
        color: Colors.white,
      ),
    ),
  ));
}

Container nameSection() {
  return Container(
      // color: Colors.green,
      child: const Center(
    child: Text(
      "first name last name",
      style: TextStyle(
        fontSize: 35,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    ),
  ));
}

Container bioSection() {
  return Container(
    // color: Colors.red,
    child: const Center(
      child: Text(
        "    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        style: TextStyle(
          fontSize: 35,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
