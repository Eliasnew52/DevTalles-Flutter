import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}




class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( //AppBar no es Constante debido a que sus dimensiones son dinamicas en dependencia de la pantalla
          backgroundColor: Colors.greenAccent,
          title: const Center(child: Text('Counter Functions', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
          actions: [
            IconButton(
            icon: Icon(Icons.refresh_rounded),
            onPressed: (){
              setState(() {
                clickCounter = 0;
              });
          }, ),
          ],
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
        // Reset
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: ()  {
            clickCounter=0;
            setState(() {});
            
          },
          child:  const Icon(Icons.refresh_outlined)
          ),
          const SizedBox( height: 10),
          //Sum +1
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: ()  {
              clickCounter++;
              setState(() {});
            
          },
          child:  const Icon(Icons.plus_one)
        //Rest -1
          ),

          const SizedBox( height: 10),

            FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: ()  {
            if (clickCounter ==0) return;
            clickCounter--;
            setState(() {});
            
          },
          child:  const Icon(Icons.exposure_minus_1_outlined)
          ),
          ],

        )
      );
  }
}