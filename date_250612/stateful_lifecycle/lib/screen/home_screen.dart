import 'package:flutter/material.dart';

// initState:     ████████████████████ 95% (거의 모든 StatefulWidget)
// build:         ████████████████████ 100% (필수)
// dispose:       ████████████████████ 90% (컨트롤러 정리)
// didChange...:  ████████ 30% (Provider, 테마 등)
// widget 변수:   ████████████ 60% (부모 데이터 접근)

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class HomeScreenStless extends StatefulWidget {
  const HomeScreenStless({super.key});

  @override
  State<HomeScreenStless> createState() => _HomeScreenStlessState();
}

class _HomeScreenStlessState extends State<HomeScreenStless> {
  bool isShow = false;
  Color color = Colors.red;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('디버그: isShow = $isShow'), // 값 확인
            if (isShow)
              GestureDetector(
                onTap: () {
                  setState(() {
                    print("클릭!");
                    color = color == Colors.red ? Colors.green : Colors.red;
                  });
                },
                child: TestWidget(color: color),
              ),
            Text('위젯 다음'), // TestWidget 위치 확인
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                print("클릭!");
                // if (isShow) {
                //   isShow = !isShow; // isShow 값을 반전
                //   setState(() {});
                // } else {
                //   isShow = !isShow; // isShow 값을 반전
                //   setState(() {});
                // }
                setState(() {
                  isShow = !isShow; // isShow 값을 반전

                  // TestWidget();
                });
              },
              child: Text("보이기"),
            ),
          ],
        ),
      ),
    );
  }
}

class TestWidget extends StatefulWidget {
  final Color color;
  TestWidget({super.key, required this.color}) {
    print("실행 순서 1");
  }

  @override
  State<TestWidget> createState() {
    print("실행 순서 2");
    return _TestWidgetState();
  }
}

class _TestWidgetState extends State<TestWidget> {
  // Color color = Colors.red;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("실행 순서 3");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("실행 순서 4");
  }

  @override
  Widget build(BuildContext context) {
    print("실행 순서 5");
    return Container(
      width: 100,
      height: 100,
      color: widget.color,
      child: Center(child: Text("클릭해봐!")),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("실행 순서 6");
  }
}
