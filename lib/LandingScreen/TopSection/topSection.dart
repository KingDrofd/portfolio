import 'package:flutter/material.dart';

import 'summary.dart';

Padding topSection() {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                child: Image.asset(
                  "images/placeholder.png",
                  fit: BoxFit.cover,
                ),
              )),
          Expanded(
            flex: 6,
            child: Text(""),
          ),
        ],
      ),
    ),
  );
}
