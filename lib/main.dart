import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:tiktok/config/theme/app_theme.dart';
import 'package:tiktok/presentacion/screen/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'tik-tok',
        //asignando un tema a la app
        theme: AppTheme(selectorColor: 6).theme(),
        /* home: Scaffold(
        appBar: AppBar(
          title: const Text('Prueba...'),
          centerTitle: true,
        ),
        body: Center(
          child: FilledButton.tonal(
              onPressed: () {}, child: const Text('Click Me')),
        ),
      ), */
        //cambiando de pantalla
        home: const ChatScreen());
  }
}
