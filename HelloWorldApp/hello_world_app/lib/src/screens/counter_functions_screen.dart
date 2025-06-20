import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          title: Center(child: Text('Counter Functions', style: GoogleFonts.rajdhani(fontWeight: FontWeight.bold, color: Colors.black,))),
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
              Text(clickCounter == 1 ?'Click' : 'Clicks', style: GoogleFonts.rajdhani(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black,)),
              Text('$clickCounter', style: GoogleFonts.rajdhani(fontSize: 100, fontWeight: FontWeight.bold, color: Colors.black,)),
            ],
          ),
        ),
        // Reset
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Refresh
            CustomButton(icon: Icons.refresh_rounded,
            onPressed: (){
              setState(() {
                clickCounter = 0;
              });
            },),
            const SizedBox( height: 10),
          
            //Sum Button
            CustomButton(icon: Icons.plus_one_rounded,
            onPressed: (){
              setState(() {
                clickCounter++;
              });
            },),

            const SizedBox( height: 10),
            //Minus Button
            CustomButton(icon: Icons.exposure_minus_1_rounded,
            onPressed: () {
              setState(() {
                if(clickCounter == 0) return;
                clickCounter--;
              });
            },),
          ],

        )
      );
  }
}

class CustomButton extends StatelessWidget {


  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      onPressed: onPressed,
      child:   Icon(icon)
              );
  }
}