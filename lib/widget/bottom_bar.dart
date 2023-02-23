import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SizedBox(
        height: 50,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: [
            fourTab(Icons.home, '홈'),
            fourTab(Icons.search, '검색'),
            fourTab(Icons.save_alt, '저장한 콘텐츠 목록'),
            fourTab(Icons.list, '더보기'),
          ],
        ),
      ),
    );
  }

  Tab fourTab(clickIcon, name) {
    return Tab(
      icon: Icon(
        clickIcon,
        size: 18,
      ),
      child: Text(
        name,
        style: const TextStyle(fontSize: 9),
      ),
    );
  }
}
