
import 'package:flutter/material.dart';
import 'package:tabbar_theory/const/tabs.dart';

class BasicAppbarTabbarScreen extends StatelessWidget {
  const BasicAppbarTabbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TABS.length,
      child: Scaffold(
          appBar: AppBar(
            title: Text('BasicAppBarScreen'),
            bottom: PreferredSize(
              // 크기를 정할 수 있다.
              preferredSize: Size.fromHeight(100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TabBar(
                    // 텝바 하단의 스크롤색상
                    indicatorColor: Colors.red,
                    // 탭바 하단의 길이
                    indicatorWeight: 4.0,
                    // 스크롤의 사이즈
                    indicatorSize: TabBarIndicatorSize.tab,
                    // 탭바를 누르지 않으면 스크롤 이동불가
                    isScrollable: true,
                    // 선택시 색상
                    labelColor: Colors.yellow,
                    // 선택되지 않았을 경우 색상
                    unselectedLabelColor: Colors.black,
                    // 선택시 Text
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                    // 선택되지 않은 택스트
                    unselectedLabelStyle: TextStyle(
                      fontWeight: FontWeight.w100,
                    ),
                    tabs: TABS
                        .map(
                          (e) => Tab(
                        icon: Icon(
                          e.icon,
                        ),
                        child: Text(
                          e.label,
                        ),
                      ),
                    )
                        .toList(),
                  ),
                ],
              )
            )
          ),
          body: TabBarView(
            // TabBar를 눌러야만 이동하게 함
            physics: NeverScrollableScrollPhysics(),
            children: TABS
                .map((e) => Center(
                      child: Icon(
                        e.icon,
                      ),
                    ),)
                .toList(),
          )),
    );
  }
}
