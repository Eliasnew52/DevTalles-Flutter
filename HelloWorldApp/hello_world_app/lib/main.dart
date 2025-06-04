import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Al Devolver un Widget Constante , Flutter no tiene que rearmarlo todo de nuevo, Mejora el Performance
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text('Hola Mundo')),
      )
    );
  }

}