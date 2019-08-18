import 'package:flutter/material.dart';

import 'my_route_observer.dart';
import 'screen/base_screen.dart';
import 'screen/screen_alpha.dart';
import 'screen/screen_beta.dart';
import 'screen/screen_delta.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Save Last Route',
      navigatorObservers: <NavigatorObserver>[
        MyRouteObserver(),
      ],
      routes: {
        '/': (context) {
          return BaseScreen();
        },
        '/alpha': (context) {
          return ScreenAlpha();
        },
        '/beta': (context) {
          return ScreenBeta();
        },
        '/delta': (context) {
          return ScreenDelta();
        },
      },
    );
  }
}
