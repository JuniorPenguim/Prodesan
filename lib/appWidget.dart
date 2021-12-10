import 'package:flutter/material.dart';

import 'homePage.dart';

/////// STATELESS WIDGET ///////
class AppWidget extends StatelessWidget {
  //Widget sem estado, imutável

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}
