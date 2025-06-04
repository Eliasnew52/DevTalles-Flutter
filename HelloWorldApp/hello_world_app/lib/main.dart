import 'package:flutter/material.dart';
import 'package:hello_world_app/src/screens/counter_screen.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Al Devolver un Widget Constante , Flutter no tiene que rearmarlo todo de nuevo, Mejora el Performance
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen()
    );
  }

}