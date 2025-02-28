// import 'package:final_project/widgets/chat_messages.dart';
// import 'package:final_project/widgets/new_message.dart';
import 'package:final_project/widgets/chat_messages.dart';
import 'package:final_project/widgets/new_message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('T A L K Y'), 
        actions: [
        IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: Icon(
              Icons.exit_to_app,
              color: Theme.of(context).colorScheme.primary,
            )),
      ]),
    body: Column(
      children: [
        Expanded(
          child:ChatMessages(),
          ),
        
        NewMessage(),
      ],
    )
    );
  }
}
