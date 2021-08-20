import 'package:flutter/material.dart';

// MyHomePage
import './pages/home/index.dart';
// LoginPage
// import './pages/login/index.dart';

class FateDyApp extends StatelessWidget {
  // 路由路径匹配
  Route<dynamic> _generateRoute(RouteSettings settings) {
    print('==== 路由跳转 ===');
    print(settings.name);

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => MyHomePage(title: '主页'));
      case '/login':
        return MaterialPageRoute(
            builder: (context) => Scaffold(body: Text('Not found1')));
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(body: Text('Not found')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fate Douyu App',
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: _generateRoute,
    );
  }
}

void main() {
  runApp(FateDyApp());
}
