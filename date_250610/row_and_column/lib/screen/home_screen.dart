import 'package:flutter/material.dart';
import 'package:row_and_column/consts/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: Container(
        //   // height: double.infinity,
        //   color: Colors.black,
        //   child: Column(
        //     children: [
        //       Flexible(
        //         fit: FlexFit.loose,
        //         flex: 2, // 비율 설정
        //         child: Container(width: 50, height: 50, color: colors[0]),
        //       ),
        //       Expanded(
        //         child: Container(width: 50, height: 50, color: colors[1]),
        //       ),
        //       Container(width: 50, height: 50, color: colors[2]),
        //     ],
        //     // mainAxisAlignment: MainAxisAlignment.start,
        //     // mainAxisSize: MainAxisSize.min,
        //     // crossAxisAlignment: CrossAxisAlignment.center,
        //     // 아래 코드를 활용해 반복문을 간단히 한줄로 표현할 수 있다. 맵의 활용을 더 익혀야 한다.
        //     // children: colors
        //     //     .map((r) => Container(width: 40, height: 50, color: r))
        //     //     .toList(),
        //     //      [
        //     //   ,
        //     //   Container(height: 50, width: 50, color: colors[0]),
        //     //   Container(height: 50, width: 50, color: colors[1]),
        //     // ],
        //   ),
        // ),
        child: Column(
          children: [
            // SizedBox(height: 150),
            Row(
              children: colors
                  .map((r) => Container(width: 50, height: 50, color: r))
                  .toList(),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
            // SizedBox(height: 150),
            Row(
              children: [Container(color: colors[0], width: 50, height: 50)],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            // SizedBox(height: 150),
            Row(
              children: colors
                  .map((r) => Container(width: 50, height: 50, color: r))
                  .toList(),
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            // SizedBox(height: 150),
            Row(
              children: [Container(color: colors[1], width: 50, height: 50)],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
    );
  }
}
