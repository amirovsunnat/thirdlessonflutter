import 'package:flutter/material.dart';

class IkkinchiScreen extends StatelessWidget {
  const IkkinchiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        automaticallyImplyLeading: false,
        title: const Text("Ikkinchi screen"),
      ),
      body: Column(
        children: [
          Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/768px-Google-flutter-logo.svg.png"),
        ],
      ),
    );
  }
}
