import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen  extends StatelessWidget{
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _ChatAppBar(),
      body: _ChatView(),
    );
    
  }
}

// ChatBar is the AppBar Widget for the chat screen
// It contains a leading CircleAvatar and a title "Chat"
// The CircleAvatar has a fixed image URL
class _ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _ChatAppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        flexibleSpace: Container(
          decoration:  BoxDecoration(
            border: Border.all(color: Colors.amber, width: 3),
            color: Color.fromARGB(255, 145, 34, 3),
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(backgroundImage: NetworkImage('https://www.hleatherjackets.com/wp-content/uploads/2019/07/46646446646.jpg'),),
        ),
        title: Text('CHAT',style: GoogleFonts.rajdhani(fontWeight: FontWeight.bold,color: Colors.amber,),),
        centerTitle: false,
      ),
    );
  }
}
//ChatView is the main content of the chat screen
//It Returns the container widget for the chat view
class _ChatView extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                     Color.fromARGB(255, 145, 34, 3),
                    Color.fromARGB(255, 0, 0, 0), 
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Text('Mundo')
        ],
      ),
    );
  }
}