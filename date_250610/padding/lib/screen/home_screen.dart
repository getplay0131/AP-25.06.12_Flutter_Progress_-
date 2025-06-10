import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          child: Padding(
            // padding: const EdgeInsets.all(10.0),
            // padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32),
            // padding: const EdgeInsets.only(left: 32.0),
            padding: const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
            child: Container(color: Colors.green, width: 50, height: 50),
          ),
        ),
      ),
    );
  }
}
