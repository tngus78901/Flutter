import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInfo("50", "Posts"), // 재사용 가능함 함수
        _buildLine(),
        _buildInfo("10", "Likes"),
        _buildLine(),
        _buildInfo("3", "Share"),
      ],
    );
  }

  Widget _buildInfo(String count, String title) {
    return Column(
      children: [
        Text(count, style: TextStyle(fontSize: 15)),
        const SizedBox(height: 2),
        Text(title, style: TextStyle(fontSize: 15)),
      ],
    );
  }

  Widget _buildLine() {
    // 주의 - color과 decoration 동시에 사용하면 오류 발생:문서에는 없으나 경험으로 외워두기
    return Container(
      width: 2,
      height: 60,
      color: Colors.blue,
    );
  }
}
