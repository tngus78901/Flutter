import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});
  // UI 선언형이라는 개념을 이해하자
  @override
  State<ProfileTab> createState() => _ProfileTabState();
} // end of StatefulWidget

// 애니메이션 효과 구현 처리 - 미리 만들어 둔 녀석
class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  // _  private,public dart에서 접근제어 지시자
  TabController? _tabController;

  // initState 메서드는 인스턴스화 될 때 단 한번만 호출되는 녀석
  // 즉 필요한 초기값이 있다면 initState에서 구현할 수ㅜ 있다.
  // 단, 렌더링 처리는(화면에 그림을 그리는 동작을 지양 한다)
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    print("111111111");
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: [
        Tab(icon: Icon(Icons.directions_train)),
        Tab(
          icon: Icon(Icons.directions_car),
        )
      ],
    );
  }

  // 내가 쓴 코드 0101로 바이너리 된다 그래서 restart해줘야한다
  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Image.network(
                "https://picsum.photos/id/${index + 1}/200/200");
          },
          itemCount: 42,
        ),
        Container(color: Colors.blue),
      ],
    );
  }
} // end of State
