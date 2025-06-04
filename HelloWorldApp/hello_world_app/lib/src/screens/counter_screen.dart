import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center( //La Propiedad Center, Usa al Parent como Referencia y Centra a los Childs
          child: Column(
            //Para tomar en Centro de la Columna, usamos el mainAxisAligment
            mainAxisAlignment: MainAxisAlignment.center,
             children: const [
              Text('Click Count', style: TextStyle( fontSize: 28, fontWeight: FontWeight.bold)),
              Text('10', style: TextStyle( fontSize: 160, fontWeight: FontWeight.w100, ),),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()  {

          },
          child:  const Icon(Icons.plus_one)
          ),
      );
  }
}