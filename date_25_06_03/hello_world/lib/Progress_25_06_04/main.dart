import 'package:flutter/material.dart';
// import 'android/app/MainActivity.dart';

void main()
{
    runApp(
        // 해당 함수가 프로그램의 시작점이 되고, 그 인자로 스캐폴드를 넣어서 프로그램 시작을 알리는것이다
        MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                backgroundColor: Colors.blue,
                // 스캐폴드의 네임드 인자로 바디가 있고, 이 바디를 이용해서 컨텐츠를 구상한다.
                // 바디의 인자로 차일드가 잇는데, 이 차일드에 콘텐츠를 넣으면 된다.
                body: Center(
                    child: Text(
                        "hello flutter",
                        style: TextStyle(color: Colors.amber, fontSize: 50),
                    ),
                ),
                //   플러터에서 인자의 값으로 주는 메서드는 위젯이라고 부른다.
            ),
        ),
    );
}
