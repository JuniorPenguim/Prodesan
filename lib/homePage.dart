import 'package:Prodesan/appController.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Página Inicial',
        ),
      ),
      body: Center(
        child: Switch(
          value: AppController.instance.isDarkTheme,
          onChanged: (value) {
            AppController.instance.changeTheme();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            //Função de atualizar state/rebuild
            counter++;
          });
        },
      ),
    );
  }
}
