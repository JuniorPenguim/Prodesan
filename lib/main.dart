// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(
    title: 'Eh nooooix',
  )); //Função Principal Global do Flutter
}

/////// STATELESS WIDGET ///////
class AppWidget extends StatelessWidget {
  //Widget sem estado/imutável

  final String title;
  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}

/////// STATEFUL WIDGET ///////
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

/////// STATE DO STATEFUL WIDGET ///////
class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: GestureDetector(
        //Função identificadora de toques
        child: Text('Eh noix $counter vezes'),
        onTap: () {
          setState(() {
            //Função de atualizar state/rebuild
            counter++;
          });
        },
      ),
    ));
  }
}
