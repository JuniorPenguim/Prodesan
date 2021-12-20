import 'package:Prodesan/appController.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';
import 'login.dart';

/////// STATELESS WIDGET ///////
class AppWidget extends StatelessWidget {
  //Widget sem estado, imutável

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light),
          initialRoute: '/',
          routes: {
            '/': (context) => loginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
