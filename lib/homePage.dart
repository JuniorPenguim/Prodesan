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
      body: Align(
          //Função para fazer multi render
          alignment: Alignment.center,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.black,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          )),
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
