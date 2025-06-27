import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 0, 0, 0),
        hintText: 'Type your message here...',
        hintStyle: GoogleFonts.rajdhani(color: Colors.cyanAccent, fontWeight: FontWeight.bold),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(1),),
          borderSide: BorderSide(color :Colors.cyanAccent, width: 2),
        ),
        suffixIcon: IconButton(
          icon: Icon(Icons.keyboard_arrow_right_rounded, color: Colors.cyanAccent),
          onPressed: () {
            print('Send message'); // Placeholder for send action
          },
        ),
        
        contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 13),
      ),
    );
  }
}
