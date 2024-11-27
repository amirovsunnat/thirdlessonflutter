import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.redAccent,
              border: Border.symmetric(
                  vertical: BorderSide(
                    color: Colors.amber,
                    width: 2,
                  ),
                  horizontal: BorderSide(
                    color: Colors.amber,
                    width: 10,
                  )),
              borderRadius: BorderRadius.circular(10)),
          // padding: EdgeInsets.fromLTRB(50, 15, 5, 10),
          alignment: Alignment.topRight,

          width: 250,
          height: 100,
          child: Center(
            child: const Text(
              // textAlign: TextAlign.center,
              "Text container",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
