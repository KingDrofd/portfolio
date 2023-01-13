import 'package:flutter/material.dart';

Column infoSection() {
  return Column(
    children: [
      Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          )),
      Expanded(flex: 3, child: bioSection())
    ],
  );
}

Padding dateSection() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(4, 8, 8, 4),
    child: Container(
      color: Colors.green,
    ),
  );
}

Padding nameSection() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8, 8, 4, 4),
    child: Container(color: Colors.green),
  );
}

Padding bioSection() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8, 4, 8, 8),
    child: Container(
      color: Colors.blue,
    ),
  );
}
