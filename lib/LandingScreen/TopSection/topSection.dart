import 'package:flutter/material.dart';

import 'summary.dart';

Container topSection() {
  return Container(
    child: Row(
      children: [
        Expanded(
            flex: 3,
            child: Image.asset(
              "images/480.png",
              fit: BoxFit.cover,
            )),
        Expanded(
          flex: 6,
          child: infoSection(),
        ),
      ],
    ),
  );
}
