import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://d26oc3sg82pgk3.cloudfront.net/files/media/edit/image/26627/square_thumb%402x.jpg'
            )
          )
          ),
        centerTitle: false,
        title: const Text('Mi chat 🤨'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child:Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) => Text('Hola soy Sergio $index'),
            )),
            Text('Hola mundo'),
          ],
        )
      )
      
    );
  }
}