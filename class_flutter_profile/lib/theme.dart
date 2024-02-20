import 'package:flutter/material.dart';

const MaterialColor primaryWhile = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    // map 구조라 앞에 제네릭 쓸 수 있음
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
  },
);

// 글로벌 함수
// main --> MA --> 변수(테마를 설정할 수 있다.)

ThemeData theme() {
  return ThemeData(
    primarySwatch: primaryWhile,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
    ),
  );
}
