import 'package:flutter/material.dart';
import 'package:tiktok/presentacion/widgets/chat/her_message_bob.dart';
import 'package:tiktok/presentacion/widgets/chat/my_message_bob.dart';
import 'package:tiktok/presentacion/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //imagen chat
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            //asignando una imagen al chat
            backgroundImage: NetworkImage(
                'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/5m5lKYEUfUSXxR9Yq29VVK4nNTb.jpg'),
          ),
        ),
        title: const Text('Esperando \u2763\u2764\u2763'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

//aqui se muestra la pantalla
class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        //se envolvio en un padding la column y se le aplico symetric
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(children: [
          Expanded(
              child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              //cambiamos de pantalla para no saturarla
              //return Text('Probando Guille numero:');
              //asignando condicional para ver que pantalla elegir
              return (index % 2 == 0)
                  ? const MyMessageBuble()
                  : const HerMessageBuble();
            },
          )),
          //animando desde message_field_box
          const MessageFieldBox(),
          const Text('hijo de chat screen')
        ]),
      ),
    );
  }
}
