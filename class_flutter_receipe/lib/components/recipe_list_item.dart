import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  // dart 오버로딩이 없다.
  const RecipeListItem(
      {required this.imageName, required this.title, super.key});

  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
