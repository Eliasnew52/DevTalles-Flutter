import 'package:flutter/material.dart';
import 'package:hello_world_app/src/screens/counter_functions_screen.dart';
//import 'package:hello_world_app/src/screens/counter_screen.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Al Devolver un Widget Constante , Flutter no tiene  que rearmarlo todo de nuevo, Mejora el Performance
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true ,//Por Defecto desde las Version 3.16, se usa Material3
        colorSchemeSeed: Colors.greenAccent,
      ),
      home:  const CounterFunctionsScreen()
    );
  }

}