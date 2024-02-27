import 'package:bugs_music_made/components/main_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp 함수 --> 해당 하는 위젯을 루트 위젯으로 만들어 준다/
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  // build 함수는 객체가 메모리에 올라가면 자동으로 한번은 호출이 됨다. 그림 그려주는 함수

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appbar: _buildMainAppBar(),
          endDrawer: MainDrawer()
    ,
    )
  }
} // end of Myapp




AppBar _buildMainAppBar() {
  return AppBar(
    leading: const Icon(Icons.signal_cellular_alt),
    title: const Text("05:00"),
    centerTitle: true,
  );
}
