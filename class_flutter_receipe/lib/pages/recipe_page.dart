import 'package:class_flutter_receipe/components/recipe_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold라는 widget을 써서 앱개발 빠르게할꺼야
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: RecipeTitle(),
    ); //scaffold
  }
}

// 전역 함수
AppBar _buildRecipeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1.0, // AppBar 의 그림자 효과 조정
    actions: [
      Icon(CupertinoIcons.search, color: Colors.black),
      SizedBox(width: 15),
      Icon(CupertinoIcons.heart, color: Colors.redAccent),
      SizedBox(width: 15),
    ],
  );
} // end of App bar
