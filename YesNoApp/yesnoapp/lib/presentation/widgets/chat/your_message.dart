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
              'lorem ipsum dolor sit amet,.',
              style: GoogleFonts.rajdhani(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),

        _ImageMessage(), // Spacing between messages
        //Todo: Images
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/7-653c8ee5d3a6bbafd759142c9c18d76c.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover, // Adjust the width as needed
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            alignment: Alignment.center,
            child: Text('Loading...',style: GoogleFonts.rajdhani(color: Colors.amber, fontWeight: FontWeight.bold),),
          );
        },
      ),
      
    );
  }
}
