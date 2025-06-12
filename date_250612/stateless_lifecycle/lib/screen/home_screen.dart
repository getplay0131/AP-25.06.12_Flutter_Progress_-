import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: testWidget());
  }
}

class testWidget extends StatelessWidget {
  testWidget({Key? key}) {
    print("생성자");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Container(width: 50, height: 50, color: Colors.red);
  }
}
