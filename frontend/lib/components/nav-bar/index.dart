/**
 * 底部导航栏
 */
import 'package:flutter/material.dart';

import '../../utils/base.dart';

class DyNavBar extends StatefulWidget {
  final arguments;

  DyNavBar({Key? key, this.arguments}) : super(key: key);

  _DyNavBarState createState() => _DyNavBarState();
}

class _DyNavBarState extends State<DyNavBar> with DYBase {
  final _bottomNavList = ["推荐", "娱乐", "鱼吧", "关注", "发现"]; // 底部导航
  // int _currentIndex = 0; // 底部导航当前页面

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              title: Text(_bottomNavList[0]),
              icon: _bottomIcon('images/nav/nav-12.jpg'))
        ])));
  }

  Widget _bottomIcon(path) {
    return Padding(
        padding: EdgeInsets.only(bottom: dp(4)),
        child: Image.asset(
          path,
          width: 25,
          height: 25,
          repeat: ImageRepeat.noRepeat,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        ));
  }
}
