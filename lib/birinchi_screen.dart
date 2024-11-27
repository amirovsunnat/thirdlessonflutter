import 'package:flutter/material.dart';
import 'package:statelesswidget_app/ikkinchi_screen.dart';
import 'package:statelesswidget_app/main.dart';

class BirinchiScreen extends StatelessWidget {
  const BirinchiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: appBarText("Home Page"),
        actions: [
          IconButton(
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const IkkinchiScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_right_alt_rounded),
          ),
          ElevatedButton(onPressed: () {}, child: const Icon(Icons.abc)),
        ],
        leading: const Icon(
          Icons.home,
          color: Colors.white,
          size: 26,
        ),
      ),
      body: const Text("Stateless Widget Screen"),
    );
  }
}
