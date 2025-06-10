import 'package:flutter/material.dart';

void main() {
  // runApp(MaterialApp(home: Scaffold(backgroundColor: Colors.blueAccent,
  //     body: Center(child: Image.asset("asset/img/logo.png", width: 150,height: 150, fit: BoxFit.contain,)  ,) //이미지를 가운데로 옮긴다라면 그럼 이미지가 가운데로 옮기는 위젯에 포함이 되어야한다. 이미지 안에 속성이나 값으로 가운데를 지정하는게 아니라.  ,
  //         ),));
  // runApp(MaterialApp(home: Scaffold(backgroundColor: Colors.amber, body: Center(child: Image.asset("asset/img/logo.png", width: 150,height: 150,fit: BoxFit.contain,))  )));
  // runApp(MaterialApp(home: Scaffold(backgroundColor: Color(0xff1f53a6),body: Center(child: Image.asset("asset/img/logo.png", width: 150,height: 150,fit: BoxFit.contain,),),),));
  runApp(MaterialApp(home: Home2()));
}

// 스테이트리스위젯을 상속받는 클래스는 위젯으로 간주된다.
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f53a6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("asset/img/logo.png"),
          LinearProgressIndicator(color: Colors.amber),
        ],
      ),
    );
  }
}

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f53a6),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("asset/img/logo.png"),
            SizedBox(height: 30),
            LinearProgressIndicator(color: Colors.amber),
          ],
        ),
      ),
    );
  }
}
