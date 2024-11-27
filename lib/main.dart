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
      home: const HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Stateless Widget misoli"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customContainer(text: "Bu stateless 2", color: Colors.red),
            customContainer(text: "Salom, Flutter", color: Colors.yellow),
            customContainer(text: "Bu stateless Widget", color: Colors.green),
          ],
        ),
      ),
    );
  }
}

Widget customContainer({
  required String text,
  required Color color,
}) {
  return Container(
    padding: const EdgeInsets.all(10),
    width: 150,
    height: 150,
    alignment: Alignment.center,
    margin: const EdgeInsets.only(top: 10),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: Colors.black45, width: 2),
      // borderRadius: BorderRadius.circular(10),
      boxShadow: const [
        BoxShadow(
          blurRadius: 4,
          color: Colors.grey,
          offset: Offset(5, 6),
        ),
      ],
      color: color,
    ),
    child: Text(
      text,
      textAlign: TextAlign.center,
    ),
  );
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
