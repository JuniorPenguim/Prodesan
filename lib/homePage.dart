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
        title: Text('Home Page'),
      ),
      body: Center(
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
