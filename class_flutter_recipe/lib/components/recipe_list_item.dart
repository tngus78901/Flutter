import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  // dart에서는 오버로딩이 없다.
  const RecipeListItem(
      {required this.imageName, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
