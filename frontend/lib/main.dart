import 'package:flutter/material.dart';

// MyHomePage
import './pages/home/index.dart';
// LoginPage
// import './pages/login/index.dart';

class FateDyApp extends StatelessWidget {
  // 路由路径匹配
  Route<dynamic> _generateRoute(RouteSettings settings) {
    // Map<String, WidgetBuilder> routes = {
    //   '/': (BuildContext context) => MyHomePage(title: 'Demo'),
    //   '/login': (BuildContext context) => LoginPage(),
    // };
    // var widget = '/';
    // if (routes[settings.name]) {
    //   widget = routes[settings.name];
    // }
    // // const widget = routes[settings.name];

    // return MaterialPageRoute<void>(
    //   settings: settings,
    //   builder: (BuildContext context) {
    //     return widget(context);
    //   },
    // );
    print('1111111111');
    print(settings.name);
    print('22222');
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (context) => MyHomePage(title: 'Demo'));
      case 'login':
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
