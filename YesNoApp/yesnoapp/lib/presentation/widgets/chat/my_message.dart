import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .end, //CrossAxisAlignment to align messages to the right
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(130, 149, 219, 218),
            border: Border.all(color: Colors.cyanAccent, width: 2),
            borderRadius: BorderRadius.circular(5), // Rounded corners
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              'My Message',
              style: GoogleFonts.rajdhani(
                color: Colors.cyanAccent,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10), // Spacing between messages
      ],
    );
  }
}
