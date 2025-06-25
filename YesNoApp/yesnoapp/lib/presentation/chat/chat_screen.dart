import 'package:flutter/material.dart';

class ChatScreen  extends StatelessWidget{
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding:  EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://www.hleatherjackets.com/wp-content/uploads/2019/07/46646446646.jpg'),
          ),
        ),
        title:  Text('Chat'),
        centerTitle: false,
      ),
    );
    
  }
}