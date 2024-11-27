import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:statelesswidget_app/birinchi_screen.dart';
import 'package:statelesswidget_app/container_example.dart';
import 'package:statelesswidget_app/ikkinchi_screen.dart';

void main(List<String> args) {
  runApp(const StatelessDastur());
}

class StatelessDastur extends StatelessWidget {
  const StatelessDastur({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.amber),
        home: const ContainerExample());
  }
}

Widget appBarText(String title) {
  return Text(
    title,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
  );
}
