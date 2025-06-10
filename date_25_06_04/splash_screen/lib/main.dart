import 'package:flutter/material.dart';

void main()
{
    runApp(MaterialApp(home: Scaffold(backgroundColor: Colors.blueAccent,
        body: Center(child: Image.asset("asset/img/logo.png", width: 150,height: 150, fit: BoxFit.contain,)  ,) //이미지를 가운데로 옮긴다라면 그럼 이미지가 가운데로 옮기는 위젯에 포함이 되어야한다. 이미지 안에 속성이나 값으로 가운데를 지정하는게 아니라.  ,
            ),));
}

