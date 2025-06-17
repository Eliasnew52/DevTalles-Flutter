import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}




class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( //AppBar no es Constante debido a que sus dimensiones son dinamicas en dependencia de la pantalla
          backgroundColor: Colors.greenAccent,
          title: const Center(child: Text('Counter Screen', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
        ),
        body: Center( //La Propiedad Center, Usa al Parent como Referencia y Centra a los Childs
          child: Column(
            //Para tomar en Centro de la Columna, usamos el mainAxisAligment
            mainAxisAlignment: MainAxisAlignment.center,
             children:  [
               Text(clickCounter == 1 ?'Click' : 'Clicks', style: const TextStyle( fontSize: 28, fontWeight: FontWeight.bold)),
              Text('$clickCounter', style:  const TextStyle( fontSize: 160, fontWeight: FontWeight.w100, ),),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()  {
            clickCounter++;
            setState(() {});
            
          },
          child:  const Icon(Icons.plus_one)
          ),
      );
  }
}