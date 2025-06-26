import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourMessage extends StatelessWidget {
  const YourMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .start, //CrossAxisAlignment to align messages to the right
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(130, 219, 204, 149),
            border: Border.all(color: Colors.amber, width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              'lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: GoogleFonts.rajdhani(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10), // Spacing between messages
        //Todo: Images
      ],
    );
  }
}
