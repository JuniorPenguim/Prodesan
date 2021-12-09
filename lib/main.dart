// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

main(){
  
  runApp(AppWidget(title: 'Eh nooooix',)); //Função Principal Global do Flutter
}

class AppWidget extends StatelessWidget{ //Widget sem estado/imutável
  
  
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);
  
  
  
  
  @override
  Widget build(BuildContext context) {
    
    return(Container( 
    child: Center(
      child: Text(
        title,
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.white, fontSize: 100.0),
      ),
    ),
    ));
    
  }


}