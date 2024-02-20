import 'package:flutter/material.dart';

// 코드의 시작점
void main() {
  // 루트 위젯을 만들어 주는 함수
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //build 함수는 화면을 그리다
  @override
  Widget build(BuildContext context) {
    // 함수 바디... 코드 사용 하기

    // 지역 변수
    Widget titleSection = Container(
      child: Row(
        children: [
          // 컬럼 -- text1, text2
          Column(
            children: [
              Text('Cdohjdb Lake c...'),
              Text('Onetwo...'),
            ],
          ),
          Icon(Icons.star),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'layout 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout 1'),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}
